import 'package:json_annotation/json_annotation.dart';
import "orbitParamsModel.dart";
part 'payloadsModel.g.dart';

@JsonSerializable()
class PayloadsModel {
  PayloadsModel();

  String? payload_id;
  @JsonKey(name: 'norad_id') List<int>? norad_id;
  bool? reused;
  List<String>? customers;
  String? nationality;
  String? manufacturer;
  String? payload_type;
  num? payload_mass_kg;
  num? payload_mass_lbs;
  String? orbit;
  OrbitParamsModel? orbit_params;
  
  factory PayloadsModel.fromJson(Map<String,dynamic> json) => _$PayloadsModelFromJson(json);
  Map<String, dynamic> toJson() => _$PayloadsModelToJson(this);
}
