// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launchModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchModel _$LaunchModelFromJson(Map<String, dynamic> json) => LaunchModel()
  ..flight_number = json['flight_number'] as num?
  ..mission_name = json['mission_name'] as String?
  ..mission_id = json['mission_id'] as List<dynamic>?
  ..upcoming = json['upcoming'] as bool?
  ..launch_year = json['launch_year'] as String?
  ..launch_date_unix = json['launch_date_unix'] as num?
  ..launch_date_utc = json['launch_date_utc'] as String?
  ..launch_date_local = json['launch_date_local'] as String?
  ..is_tentative = json['is_tentative'] as bool?
  ..tentative_max_precision = json['tentative_max_precision'] as String?
  ..tbd = json['tbd'] as bool?
  ..launch_window = json['launch_window'] as num?
  ..rocket = json['rocket'] == null
      ? null
      : RocketModel.fromJson(json['rocket'] as Map<String, dynamic>)
  ..ships = json['ships'] as List<dynamic>?
  ..telemetry = json['telemetry'] == null
      ? null
      : TelemetryModel.fromJson(json['telemetry'] as Map<String, dynamic>)
  ..launch_site = json['launch_site'] == null
      ? null
      : LaunchSiteModel.fromJson(json['launch_site'] as Map<String, dynamic>)
  ..launch_success = json['launch_success'] as bool?
  ..launch_failure_details = json['launch_failure_details'] == null
      ? null
      : LaunchFailureDetailsModel.fromJson(
          json['launch_failure_details'] as Map<String, dynamic>)
  ..links = json['links'] == null
      ? null
      : LinksModel.fromJson(json['links'] as Map<String, dynamic>)
  ..details = json['details'] as String?
  ..static_fire_date_utc = json['static_fire_date_utc'] as String?
  ..static_fire_date_unix = json['static_fire_date_unix'] as num?
  ..timeline = json['timeline'] == null
      ? null
      : TimelineModel.fromJson(json['timeline'] as Map<String, dynamic>)
  ..crew = json['crew'] as List<dynamic>?;

Map<String, dynamic> _$LaunchModelToJson(LaunchModel instance) =>
    <String, dynamic>{
      'flight_number': instance.flight_number,
      'mission_name': instance.mission_name,
      'mission_id': instance.mission_id,
      'upcoming': instance.upcoming,
      'launch_year': instance.launch_year,
      'launch_date_unix': instance.launch_date_unix,
      'launch_date_utc': instance.launch_date_utc,
      'launch_date_local': instance.launch_date_local,
      'is_tentative': instance.is_tentative,
      'tentative_max_precision': instance.tentative_max_precision,
      'tbd': instance.tbd,
      'launch_window': instance.launch_window,
      'rocket': instance.rocket,
      'ships': instance.ships,
      'telemetry': instance.telemetry,
      'launch_site': instance.launch_site,
      'launch_success': instance.launch_success,
      'launch_failure_details': instance.launch_failure_details,
      'links': instance.links,
      'details': instance.details,
      'static_fire_date_utc': instance.static_fire_date_utc,
      'static_fire_date_unix': instance.static_fire_date_unix,
      'timeline': instance.timeline,
      'crew': instance.crew,
    };
