// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timelineModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimelineModel _$TimelineModelFromJson(Map<String, dynamic> json) =>
    TimelineModel()
      ..webcast_liftoff = json['webcast_liftoff'] as num?
      ..go_for_prop_loading = json['go_for_prop_loading'] as num?
      ..rp1_loading = json['rp1_loading'] as num?
      ..stage1_lox_loading = json['stage1_lox_loading'] as num?
      ..stage2_lox_loading = json['stage2_lox_loading'] as num?
      ..engine_chill = json['engine_chill'] as num?
      ..prelaunch_checks = json['prelaunch_checks'] as num?
      ..propellant_pressurization = json['propellant_pressurization'] as num?
      ..go_for_launch = json['go_for_launch'] as num?
      ..ignition = json['ignition'] as num?
      ..liftoff = json['liftoff'] as num?
      ..maxq = json['maxq'] as num?
      ..meco = json['meco'] as num?
      ..stage_sep = json['stage_sep'] as num?
      ..second_stage_ignition = json['second_stage_ignition'] as num?
      ..seco = json['seco'] as num?;

Map<String, dynamic> _$TimelineModelToJson(TimelineModel instance) =>
    <String, dynamic>{
      'webcast_liftoff': instance.webcast_liftoff,
      'go_for_prop_loading': instance.go_for_prop_loading,
      'rp1_loading': instance.rp1_loading,
      'stage1_lox_loading': instance.stage1_lox_loading,
      'stage2_lox_loading': instance.stage2_lox_loading,
      'engine_chill': instance.engine_chill,
      'prelaunch_checks': instance.prelaunch_checks,
      'propellant_pressurization': instance.propellant_pressurization,
      'go_for_launch': instance.go_for_launch,
      'ignition': instance.ignition,
      'liftoff': instance.liftoff,
      'maxq': instance.maxq,
      'meco': instance.meco,
      'stage_sep': instance.stage_sep,
      'second_stage_ignition': instance.second_stage_ignition,
      'seco': instance.seco,
    };
