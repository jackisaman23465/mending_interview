import 'package:json_annotation/json_annotation.dart';

part 'fairingsModel.g.dart';

@JsonSerializable()
class FairingsModel {
  FairingsModel();

  bool? reused;
  bool? recovery_attempt;
  bool? recovered;
  String? ship;
  
  factory FairingsModel.fromJson(Map<String,dynamic> json) => _$FairingsModelFromJson(json);
  Map<String, dynamic> toJson() => _$FairingsModelToJson(this);
}
