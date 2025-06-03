import 'package:json_annotation/json_annotation.dart';

part 'game_detail.g.dart';

@JsonSerializable()
class GameDetail {
  final int id;
  final String title;
  final String thumbnail;
  final String status;
  @JsonKey(name: 'short_description')
  final String shortDescription;
  final String description;
  @JsonKey(name: 'game_url')
  final String gameUrl;
  final String genre;
  final String platform;
  final String publisher;
  final String developer;
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @JsonKey(name: 'profile_url')
  final String profileUrl;
  @JsonKey(name: 'minimum_system_requirements')
  final MinimumSystemRequirements? minimumSystemRequirements;
  final List<Screenshot> screenshots;

  GameDetail({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.status,
    required this.shortDescription,
    required this.description,
    required this.gameUrl,
    required this.genre,
    required this.platform,
    required this.publisher,
    required this.developer,
    required this.releaseDate,
    required this.profileUrl,
    this.minimumSystemRequirements,
    required this.screenshots,
  });

  factory GameDetail.fromJson(Map<String, dynamic> json) =>
      _$GameDetailFromJson(json);
  Map<String, dynamic> toJson() => _$GameDetailToJson(this);
}

@JsonSerializable()
class MinimumSystemRequirements {
  final String os;
  final String processor;
  final String memory;
  final String graphics;
  final String storage;

  MinimumSystemRequirements({
    required this.os,
    required this.processor,
    required this.memory,
    required this.graphics,
    required this.storage,
  });

  factory MinimumSystemRequirements.fromJson(Map<String, dynamic> json) =>
      _$MinimumSystemRequirementsFromJson(json);
  Map<String, dynamic> toJson() => _$MinimumSystemRequirementsToJson(this);
}

@JsonSerializable()
class Screenshot {
  final int id;
  final String image;

  Screenshot({required this.id, required this.image});

  factory Screenshot.fromJson(Map<String, dynamic> json) =>
      _$ScreenshotFromJson(json);
  Map<String, dynamic> toJson() => _$ScreenshotToJson(this);
}
