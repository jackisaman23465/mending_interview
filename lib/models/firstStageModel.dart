import 'package:json_annotation/json_annotation.dart';
import "coresModel.dart";
part 'firstStageModel.g.dart';

@JsonSerializable()
class FirstStageModel {
  FirstStageModel();

  List<CoresModel>? cores;
  
  factory FirstStageModel.fromJson(Map<String,dynamic> json) => _$FirstStageModelFromJson(json);
  Map<String, dynamic> toJson() => _$FirstStageModelToJson(this);
}
