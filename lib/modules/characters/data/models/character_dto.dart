// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:rick_morty_doonamis/modules/characters/data/models/location_model.dart';
import 'package:rick_morty_doonamis/modules/characters/data/models/origin_model.dart';

part 'character_dto.g.dart';

@JsonSerializable()
class CharacterDTO {
  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  Origin? origin;
  Location? location;
  String? image;
  List<String>? episode;
  String? url;
  String? created;
  bool? isFavourite;
  CharacterDTO({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    this.episode,
    this.url,
    this.created,
    this.isFavourite,
  });

  factory CharacterDTO.fromJson(Map<String, dynamic> json) =>
      _$CharacterDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDTOToJson(this);
}
