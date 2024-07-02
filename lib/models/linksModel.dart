import 'package:json_annotation/json_annotation.dart';

part 'linksModel.g.dart';

@JsonSerializable()
class LinksModel {
  LinksModel();

  String? mission_patch;
  String? mission_patch_small;
  String? reddit_campaign;
  String? reddit_launch;
  String? reddit_recovery;
  String? reddit_media;
  String? presskit;
  String? article_link;
  String? wikipedia;
  String? video_link;
  String? youtube_id;
  List<String>? flickr_images;
  
  factory LinksModel.fromJson(Map<String,dynamic> json) => _$LinksModelFromJson(json);
  Map<String, dynamic> toJson() => _$LinksModelToJson(this);
}
