import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty_doonamis/modules/characters/app/structure/character/character_state.dart';
import 'package:rick_morty_doonamis/modules/characters/data/models/character_dto.dart';
import 'package:rick_morty_doonamis/modules/characters/data/repositories/character_repository.dart';

class CharacterCubit extends Cubit<CharacterState> {
  final CharacterRepository characterRepository;
  CharacterCubit({required this.characterRepository})
      : super(const CharacterState()) {
    _init();
  }

  Future<void> _init() async {
    List<CharacterDTO> characters =
        await characterRepository.fetchListCharacter(1);

    emit(state.copyWith(character: characters));
  }
}
