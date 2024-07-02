import 'package:json_annotation/json_annotation.dart';

part 'launchFailureDetailsModel.g.dart';

@JsonSerializable()
class LaunchFailureDetailsModel {
  LaunchFailureDetailsModel();

  num? time;
  num? altitude;
  String? reason;
  
  factory LaunchFailureDetailsModel.fromJson(Map<String,dynamic> json) => _$LaunchFailureDetailsModelFromJson(json);
  Map<String, dynamic> toJson() => _$LaunchFailureDetailsModelToJson(this);
}
