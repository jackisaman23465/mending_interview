// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firstStageModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirstStageModel _$FirstStageModelFromJson(Map<String, dynamic> json) =>
    FirstStageModel()
      ..cores = (json['cores'] as List<dynamic>?)
          ?.map((e) => CoresModel.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FirstStageModelToJson(FirstStageModel instance) =>
    <String, dynamic>{
      'cores': instance.cores,
    };
