import 'package:rick_morty_doonamis/modules/characters/data/models/character_dto.dart';
import 'package:rick_morty_doonamis/modules/characters/data/services/character_api_services.dart';
import 'package:rick_morty_doonamis/modules/characters/domain/character_domain_repository.dart';

class CharacterRepository extends CharacterDomainRepository {
  final CharacterApiServices rickandmortyApiServicesCharacters;

  CharacterRepository({required this.rickandmortyApiServicesCharacters});

  @override
  Future<List<CharacterDTO>> fetchListCharacter(int page) async {
    final List<CharacterDTO> characters =
        await rickandmortyApiServicesCharacters.getCharactersPerPage(page);

    return characters;
  }
}
