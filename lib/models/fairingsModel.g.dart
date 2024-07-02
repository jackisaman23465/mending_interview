// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fairingsModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FairingsModel _$FairingsModelFromJson(Map<String, dynamic> json) =>
    FairingsModel()
      ..reused = json['reused'] as bool?
      ..recovery_attempt = json['recovery_attempt'] as bool?
      ..recovered = json['recovered'] as bool?
      ..ship = json['ship'] as String?;

Map<String, dynamic> _$FairingsModelToJson(FairingsModel instance) =>
    <String, dynamic>{
      'reused': instance.reused,
      'recovery_attempt': instance.recovery_attempt,
      'recovered': instance.recovered,
      'ship': instance.ship,
    };
