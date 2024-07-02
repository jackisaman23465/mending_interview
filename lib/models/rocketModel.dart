import 'package:json_annotation/json_annotation.dart';
import "firstStageModel.dart";
import "secondStageModel.dart";
import "fairingsModel.dart";
part 'rocketModel.g.dart';

@JsonSerializable()
class RocketModel {
  RocketModel();

  String? rocket_id;
  String? rocket_name;
  String? rocket_type;
  FirstStageModel? first_stage;
  SecondStageModel? second_stage;
  FairingsModel? fairings;
  
  factory RocketModel.fromJson(Map<String,dynamic> json) => _$RocketModelFromJson(json);
  Map<String, dynamic> toJson() => _$RocketModelToJson(this);
}
