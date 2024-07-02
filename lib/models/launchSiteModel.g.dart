// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launchSiteModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchSiteModel _$LaunchSiteModelFromJson(Map<String, dynamic> json) =>
    LaunchSiteModel()
      ..site_id = json['site_id'] as String?
      ..site_name = json['site_name'] as String?
      ..site_name_long = json['site_name_long'] as String?;

Map<String, dynamic> _$LaunchSiteModelToJson(LaunchSiteModel instance) =>
    <String, dynamic>{
      'site_id': instance.site_id,
      'site_name': instance.site_name,
      'site_name_long': instance.site_name_long,
    };
