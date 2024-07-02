import 'package:json_annotation/json_annotation.dart';
import "payloadsModel.dart";
part 'secondStageModel.g.dart';

@JsonSerializable()
class SecondStageModel {
  SecondStageModel();

  num? block;
  List<PayloadsModel>? payloads;
  
  factory SecondStageModel.fromJson(Map<String,dynamic> json) => _$SecondStageModelFromJson(json);
  Map<String, dynamic> toJson() => _$SecondStageModelToJson(this);
}
