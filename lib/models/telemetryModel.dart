import 'package:json_annotation/json_annotation.dart';

part 'telemetryModel.g.dart';

@JsonSerializable()
class TelemetryModel {
  TelemetryModel();

  String? flight_club;
  
  factory TelemetryModel.fromJson(Map<String,dynamic> json) => _$TelemetryModelFromJson(json);
  Map<String, dynamic> toJson() => _$TelemetryModelToJson(this);
}
