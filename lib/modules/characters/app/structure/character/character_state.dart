import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_morty_doonamis/modules/characters/data/models/character_dto.dart';

part 'character_state.freezed.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState({
    @Default([]) List<CharacterDTO> character,
    @Default([]) List<CharacterDTO> favCharacters,
  }) = _CharacterState;
}
