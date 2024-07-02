// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'linksModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LinksModel _$LinksModelFromJson(Map<String, dynamic> json) => LinksModel()
  ..mission_patch = json['mission_patch'] as String?
  ..mission_patch_small = json['mission_patch_small'] as String?
  ..reddit_campaign = json['reddit_campaign'] as String?
  ..reddit_launch = json['reddit_launch'] as String?
  ..reddit_recovery = json['reddit_recovery'] as String?
  ..reddit_media = json['reddit_media'] as String?
  ..presskit = json['presskit'] as String?
  ..article_link = json['article_link'] as String?
  ..wikipedia = json['wikipedia'] as String?
  ..video_link = json['video_link'] as String?
  ..youtube_id = json['youtube_id'] as String?
  ..flickr_images = (json['flickr_images'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList();

Map<String, dynamic> _$LinksModelToJson(LinksModel instance) =>
    <String, dynamic>{
      'mission_patch': instance.mission_patch,
      'mission_patch_small': instance.mission_patch_small,
      'reddit_campaign': instance.reddit_campaign,
      'reddit_launch': instance.reddit_launch,
      'reddit_recovery': instance.reddit_recovery,
      'reddit_media': instance.reddit_media,
      'presskit': instance.presskit,
      'article_link': instance.article_link,
      'wikipedia': instance.wikipedia,
      'video_link': instance.video_link,
      'youtube_id': instance.youtube_id,
      'flickr_images': instance.flickr_images,
    };
