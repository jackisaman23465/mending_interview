import 'package:json_annotation/json_annotation.dart';

part 'timelineModel.g.dart';

@JsonSerializable()
class TimelineModel {
  TimelineModel();

  num? webcast_liftoff;
  num? go_for_prop_loading;
  num? rp1_loading;
  num? stage1_lox_loading;
  num? stage2_lox_loading;
  num? engine_chill;
  num? prelaunch_checks;
  num? propellant_pressurization;
  num? go_for_launch;
  num? ignition;
  num? liftoff;
  num? maxq;
  num? meco;
  num? stage_sep;
  num? second_stage_ignition;
  num? seco;
  
  factory TimelineModel.fromJson(Map<String,dynamic> json) => _$TimelineModelFromJson(json);
  Map<String, dynamic> toJson() => _$TimelineModelToJson(this);
}
