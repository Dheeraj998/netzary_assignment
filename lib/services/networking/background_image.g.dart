// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'background_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BackgroundImage _$BackgroundImageFromJson(Map<String, dynamic> json) =>
    BackgroundImage(
      title: json['title'] as String?,
      image: json['image'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$BackgroundImageToJson(BackgroundImage instance) =>
    <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'id': instance.id,
    };
