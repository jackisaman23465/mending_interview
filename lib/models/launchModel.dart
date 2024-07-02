import 'package:json_annotation/json_annotation.dart';
import "rocketModel.dart";
import "telemetryModel.dart";
import "launchSiteModel.dart";
import "launchFailureDetailsModel.dart";
import "linksModel.dart";
import "timelineModel.dart";
part 'launchModel.g.dart';

@JsonSerializable()
class LaunchModel {
  LaunchModel();

  num? flight_number;
  String? mission_name;
  List? mission_id;
  bool? upcoming;
  String? launch_year;
  num? launch_date_unix;
  String? launch_date_utc;
  String? launch_date_local;
  bool? is_tentative;
  String? tentative_max_precision;
  bool? tbd;
  num? launch_window;
  RocketModel? rocket;
  List? ships;
  TelemetryModel? telemetry;
  LaunchSiteModel? launch_site;
  bool? launch_success;
  LaunchFailureDetailsModel? launch_failure_details;
  LinksModel? links;
  String? details;
  String? static_fire_date_utc;
  num? static_fire_date_unix;
  TimelineModel? timeline;
  List? crew;
  
  factory LaunchModel.fromJson(Map<String,dynamic> json) => _$LaunchModelFromJson(json);
  Map<String, dynamic> toJson() => _$LaunchModelToJson(this);
}
