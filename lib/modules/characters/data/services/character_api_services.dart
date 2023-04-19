import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:rick_morty_doonamis/api.dart';
import 'package:rick_morty_doonamis/modules/characters/data/models/character_dto.dart';

class CharacterApiServices {
  Future<List<CharacterDTO>> getCharactersPerPage(int page) async {
    final queryParameters = {
      'page': page.toString(),
    };

    final Uri uri = Uri.https(API.BASE_URL, '/api/character', queryParameters);
    try {
      final http.Response response = await http.get(uri);
      print(response);

      if (response.statusCode != 200) {
        print(response.statusCode);
      }

      final responseBody = json.decode(response.body);
      print(response.body);

      List<CharacterDTO> resultCharacters = responseBody['results']
          .map<CharacterDTO>((character) => CharacterDTO.fromJson(character))
          .toList();
      print(resultCharacters);
      return resultCharacters;
    } catch (e) {
      log('${e}');
      rethrow;
    }
  }
}
