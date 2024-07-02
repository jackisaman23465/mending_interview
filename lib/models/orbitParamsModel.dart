import 'package:json_annotation/json_annotation.dart';

part 'orbitParamsModel.g.dart';

@JsonSerializable()
class OrbitParamsModel {
  OrbitParamsModel();

  String? reference_system;
  String? regime;
  num? longitude;
  num? lifespan_years;
  String? epoch;
  num? mean_motion;
  num? raan;
  num? semi_major_axis_km;
  num? eccentricity;
  num? periapsis_km;
  num? apoapsis_km;
  num? inclination_deg;
  num? period_min;
  num? arg_of_pericenter;
  num? mean_anomaly;
  
  factory OrbitParamsModel.fromJson(Map<String,dynamic> json) => _$OrbitParamsModelFromJson(json);
  Map<String, dynamic> toJson() => _$OrbitParamsModelToJson(this);
}
