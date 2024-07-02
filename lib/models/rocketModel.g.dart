// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocketModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RocketModel _$RocketModelFromJson(Map<String, dynamic> json) => RocketModel()
  ..rocket_id = json['rocket_id'] as String?
  ..rocket_name = json['rocket_name'] as String?
  ..rocket_type = json['rocket_type'] as String?
  ..first_stage = json['first_stage'] == null
      ? null
      : FirstStageModel.fromJson(json['first_stage'] as Map<String, dynamic>)
  ..second_stage = json['second_stage'] == null
      ? null
      : SecondStageModel.fromJson(json['second_stage'] as Map<String, dynamic>)
  ..fairings = json['fairings'] == null
      ? null
      : FairingsModel.fromJson(json['fairings'] as Map<String, dynamic>);

Map<String, dynamic> _$RocketModelToJson(RocketModel instance) =>
    <String, dynamic>{
      'rocket_id': instance.rocket_id,
      'rocket_name': instance.rocket_name,
      'rocket_type': instance.rocket_type,
      'first_stage': instance.first_stage,
      'second_stage': instance.second_stage,
      'fairings': instance.fairings,
    };
