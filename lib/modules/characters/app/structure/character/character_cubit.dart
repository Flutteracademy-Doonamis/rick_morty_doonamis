import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty_doonamis/modules/characters/app/structure/character/character_state.dart';
import 'package:rick_morty_doonamis/modules/characters/data/models/character_dto.dart';
import 'package:rick_morty_doonamis/modules/characters/data/repositories/character_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CharacterCubit extends Cubit<CharacterState> {
  final CharacterRepository characterRepository;
  CharacterCubit({required this.characterRepository})
      : super(const CharacterState()) {
    _init();
  }

  Future<void> _init() async {
    List<CharacterDTO> initCharacters =
        await characterRepository.fetchListCharacter(1);
    emit(state.copyWith(
      character: initCharacters,
    ));

    await getLocalFavs();

    // List<CharacterDTO> characters = [];

    // initCharacters.map((CharacterDTO element) {
    //   state.favCharacters.map((favElement) {
    //     if (favElement.id == element.id) {
    //       characters.add(favElement);
    //     } else {
    //       characters.add(element);
    //     }
    //   });
    // });
  }

  Future<void> toggleCharacters(int idElement) async {
    final newCharacters = state.character.map((CharacterDTO element) {
      if (element.id == idElement) {
        element.isFavourite ??= false;
        return CharacterDTO(
          id: element.id!,
          name: element.name,
          status: element.status,
          species: element.species,
          type: element.type,
          gender: element.gender,
          origin: element.origin,
          location: element.location,
          image: element.image,
          episode: element.episode,
          url: element.url,
          created: element.created,
          isFavourite: !element.isFavourite!,
        );
      }
      return element;
    }).toList();

    emit(state.copyWith(character: newCharacters));
    setLocalFavs();
  }

  Future<void> setLocalFavs() async {
    // ENVIAR DATOS DE DB LOCAL
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(
          "favouritesCharacters", jsonEncode(state.character));
    } catch (e) {
      print(e);
    }
  }

  Future<void> getLocalFavs() async {
    // CONSEGUIR DATOS DE DB LOCAL
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();

      final _response = prefs.getString("favouritesCharacters");

      final List<dynamic> _mapResponse = jsonDecode(_response!);

      final List<CharacterDTO> _listResponse =
          _mapResponse.map((e) => CharacterDTO.fromJson(e)).toList();
      print(_listResponse);
      emit(state.copyWith(
        character: _listResponse,
        favCharacters: _listResponse,
      ));
    } catch (e) {
      print(e);
    }
  }
}
