// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'networking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Networking _$NetworkingFromJson(Map<String, dynamic> json) => Networking(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      transacts: (json['transacts'] as List<dynamic>?)
          ?.map((e) => Transact.fromJson(e as Map<String, dynamic>))
          .toList(),
      backgroundImages: (json['background_images'] as List<dynamic>?)
          ?.map((e) => BackgroundImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NetworkingToJson(Networking instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'data': instance.data,
      'transacts': instance.transacts,
      'background_images': instance.backgroundImages,
    };
