import 'package:json_annotation/json_annotation.dart';

part 'screen_shots.g.dart';

@JsonSerializable()
class Screenshots {
  int? id;
  String? image;

  Screenshots();

  factory Screenshots.fromJson(Map<String, dynamic> json) =>
      _$ScreenshotsFromJson(json);
  Map<String, dynamic> toJson() => _$ScreenshotsToJson(this);
}
