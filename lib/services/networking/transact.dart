import 'package:json_annotation/json_annotation.dart';

part 'transact.g.dart';

@JsonSerializable()
class Transact {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'slug')
  String? slug;
  @JsonKey(name: 'label_seller')
  String? labelSeller;
  @JsonKey(name: 'label_buyer')
  String? labelBuyer;
  @JsonKey(name: 'icon')
  String? icon;
  @JsonKey(name: 'price_unit')
  dynamic priceUnit;

  Transact({
    this.name,
    this.id,
    this.slug,
    this.labelSeller,
    this.labelBuyer,
    this.icon,
    this.priceUnit,
  });

  factory Transact.fromJson(Map<String, dynamic> json) {
    return _$TransactFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TransactToJson(this);
}
