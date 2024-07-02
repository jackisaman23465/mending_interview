import 'package:json_annotation/json_annotation.dart';

part 'coresModel.g.dart';

@JsonSerializable()
class CoresModel {
  CoresModel();

  String? core_serial;
  num? flight;
  num? block;
  bool? gridfins;
  bool? legs;
  bool? reused;
  bool? land_success;
  bool? landing_intent;
  String? landing_type;
  String? landing_vehicle;
  
  factory CoresModel.fromJson(Map<String,dynamic> json) => _$CoresModelFromJson(json);
  Map<String, dynamic> toJson() => _$CoresModelToJson(this);
}
