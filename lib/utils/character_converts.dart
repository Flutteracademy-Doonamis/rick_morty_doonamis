import 'package:rick_morty_doonamis/modules/characters/data/models/character_dto.dart';

class CharacterConverts {
  static bool compareFavList(CharacterDTO character) {
    List favourites = [];

    return favourites.contains(character);
  }
}
