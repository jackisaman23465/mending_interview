// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coresModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoresModel _$CoresModelFromJson(Map<String, dynamic> json) => CoresModel()
  ..core_serial = json['core_serial'] as String?
  ..flight = json['flight'] as num?
  ..block = json['block'] as num?
  ..gridfins = json['gridfins'] as bool?
  ..legs = json['legs'] as bool?
  ..reused = json['reused'] as bool?
  ..land_success = json['land_success'] as bool?
  ..landing_intent = json['landing_intent'] as bool?
  ..landing_type = json['landing_type'] as String?
  ..landing_vehicle = json['landing_vehicle'] as String?;

Map<String, dynamic> _$CoresModelToJson(CoresModel instance) =>
    <String, dynamic>{
      'core_serial': instance.core_serial,
      'flight': instance.flight,
      'block': instance.block,
      'gridfins': instance.gridfins,
      'legs': instance.legs,
      'reused': instance.reused,
      'land_success': instance.land_success,
      'landing_intent': instance.landing_intent,
      'landing_type': instance.landing_type,
      'landing_vehicle': instance.landing_vehicle,
    };
