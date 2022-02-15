// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transact _$TransactFromJson(Map<String, dynamic> json) => Transact(
      name: json['name'] as String?,
      id: json['id'] as int?,
      slug: json['slug'] as String?,
      labelSeller: json['label_seller'] as String?,
      labelBuyer: json['label_buyer'] as String?,
      icon: json['icon'] as String?,
      priceUnit: json['price_unit'],
    );

Map<String, dynamic> _$TransactToJson(Transact instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'slug': instance.slug,
      'label_seller': instance.labelSeller,
      'label_buyer': instance.labelBuyer,
      'icon': instance.icon,
      'price_unit': instance.priceUnit,
    };
