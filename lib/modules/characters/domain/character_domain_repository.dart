import 'package:rick_morty_doonamis/modules/characters/data/models/character_dto.dart';

abstract class CharacterDomainRepository {
  Future<List<CharacterDTO>> fetchListCharacter(int page);
}
