import 'package:json_annotation/json_annotation.dart';

import 'item.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'items')
  List<Item>? items;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'summary')
  String? summary;
  @JsonKey(name: 'icon')
  int? icon;
  @JsonKey(name: 'two_line')
  bool? twoLine;
  @JsonKey(name: 'see_all')
  String? seeAll;

  Datum({
    this.type,
    this.items,
    this.title,
    this.summary,
    this.icon,
    this.twoLine,
    this.seeAll,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
