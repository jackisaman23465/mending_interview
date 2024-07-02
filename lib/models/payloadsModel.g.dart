// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payloadsModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayloadsModel _$PayloadsModelFromJson(Map<String, dynamic> json) =>
    PayloadsModel()
      ..payload_id = json['payload_id'] as String?
      ..norad_id =
          (json['norad_id'] as List<dynamic>?)?.map((e) => e as int).toList()
      ..reused = json['reused'] as bool?
      ..customers = (json['customers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList()
      ..nationality = json['nationality'] as String?
      ..manufacturer = json['manufacturer'] as String?
      ..payload_type = json['payload_type'] as String?
      ..payload_mass_kg = json['payload_mass_kg'] as num?
      ..payload_mass_lbs = json['payload_mass_lbs'] as num?
      ..orbit = json['orbit'] as String?
      ..orbit_params = json['orbit_params'] == null
          ? null
          : OrbitParamsModel.fromJson(
              json['orbit_params'] as Map<String, dynamic>);

Map<String, dynamic> _$PayloadsModelToJson(PayloadsModel instance) =>
    <String, dynamic>{
      'payload_id': instance.payload_id,
      'norad_id': instance.norad_id,
      'reused': instance.reused,
      'customers': instance.customers,
      'nationality': instance.nationality,
      'manufacturer': instance.manufacturer,
      'payload_type': instance.payload_type,
      'payload_mass_kg': instance.payload_mass_kg,
      'payload_mass_lbs': instance.payload_mass_lbs,
      'orbit': instance.orbit,
      'orbit_params': instance.orbit_params,
    };
