// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orbitParamsModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrbitParamsModel _$OrbitParamsModelFromJson(Map<String, dynamic> json) =>
    OrbitParamsModel()
      ..reference_system = json['reference_system'] as String?
      ..regime = json['regime'] as String?
      ..longitude = json['longitude'] as num?
      ..lifespan_years = json['lifespan_years'] as num?
      ..epoch = json['epoch'] as String?
      ..mean_motion = json['mean_motion'] as num?
      ..raan = json['raan'] as num?
      ..semi_major_axis_km = json['semi_major_axis_km'] as num?
      ..eccentricity = json['eccentricity'] as num?
      ..periapsis_km = json['periapsis_km'] as num?
      ..apoapsis_km = json['apoapsis_km'] as num?
      ..inclination_deg = json['inclination_deg'] as num?
      ..period_min = json['period_min'] as num?
      ..arg_of_pericenter = json['arg_of_pericenter'] as num?
      ..mean_anomaly = json['mean_anomaly'] as num?;

Map<String, dynamic> _$OrbitParamsModelToJson(OrbitParamsModel instance) =>
    <String, dynamic>{
      'reference_system': instance.reference_system,
      'regime': instance.regime,
      'longitude': instance.longitude,
      'lifespan_years': instance.lifespan_years,
      'epoch': instance.epoch,
      'mean_motion': instance.mean_motion,
      'raan': instance.raan,
      'semi_major_axis_km': instance.semi_major_axis_km,
      'eccentricity': instance.eccentricity,
      'periapsis_km': instance.periapsis_km,
      'apoapsis_km': instance.apoapsis_km,
      'inclination_deg': instance.inclination_deg,
      'period_min': instance.period_min,
      'arg_of_pericenter': instance.arg_of_pericenter,
      'mean_anomaly': instance.mean_anomaly,
    };
