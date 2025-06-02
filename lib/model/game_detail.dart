import 'package:json_annotation/json_annotation.dart';
import 'package:sample_flutter/model/screen_shots.dart';

import 'minimum_syste_requirements.dart';

part 'game_detail.g.dart';

@JsonSerializable()
class GameDetail {
  int? id;
  String? title;
  String? thumbnail;
  String? status;
  @JsonKey(name: 'short_description')
  String? shortDescription;
  String? description;
  @JsonKey(name: 'game_url')
  String? gameUrl;
  String? genre;
  String? platform;
  String? publisher;
  String? developer;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  @JsonKey(name: 'profile_url')
  String? profileUrl;
  @JsonKey(name: 'minimum_system_requirements')
  MinimumSystemRequirements? minimumSystemRequirements;
  List<Screenshots>? screenshots;

  GameDetail();

  factory GameDetail.fromJson(Map<String, dynamic> json) =>
      _$GameDetailFromJson(json);
  Map<String, dynamic> toJson() => _$GameDetailToJson(this);
}
