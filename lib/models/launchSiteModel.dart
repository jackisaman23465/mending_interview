import 'package:json_annotation/json_annotation.dart';

part 'launchSiteModel.g.dart';

@JsonSerializable()
class LaunchSiteModel {
  LaunchSiteModel();

  String? site_id;
  String? site_name;
  String? site_name_long;
  
  factory LaunchSiteModel.fromJson(Map<String,dynamic> json) => _$LaunchSiteModelFromJson(json);
  Map<String, dynamic> toJson() => _$LaunchSiteModelToJson(this);
}
