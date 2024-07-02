// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secondStageModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SecondStageModel _$SecondStageModelFromJson(Map<String, dynamic> json) =>
    SecondStageModel()
      ..block = json['block'] as num?
      ..payloads = (json['payloads'] as List<dynamic>?)
          ?.map((e) => PayloadsModel.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SecondStageModelToJson(SecondStageModel instance) =>
    <String, dynamic>{
      'block': instance.block,
      'payloads': instance.payloads,
    };
