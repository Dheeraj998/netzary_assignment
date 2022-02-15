// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      type: json['type'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String?,
      summary: json['summary'] as String?,
      icon: json['icon'] as int?,
      twoLine: json['two_line'] as bool?,
      seeAll: json['see_all'] as String?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'type': instance.type,
      'items': instance.items,
      'title': instance.title,
      'summary': instance.summary,
      'icon': instance.icon,
      'two_line': instance.twoLine,
      'see_all': instance.seeAll,
    };
