// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launchFailureDetailsModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchFailureDetailsModel _$LaunchFailureDetailsModelFromJson(
        Map<String, dynamic> json) =>
    LaunchFailureDetailsModel()
      ..time = json['time'] as num?
      ..altitude = json['altitude'] as num?
      ..reason = json['reason'] as String?;

Map<String, dynamic> _$LaunchFailureDetailsModelToJson(
        LaunchFailureDetailsModel instance) =>
    <String, dynamic>{
      'time': instance.time,
      'altitude': instance.altitude,
      'reason': instance.reason,
    };
