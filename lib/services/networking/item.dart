import 'package:json_annotation/json_annotation.dart';
part 'item.g.dart';

@JsonSerializable()
class Item {
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'link')
  String? link;

  Item({
    this.title,
    this.image,
    this.link,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    //throw UnimplementedError('Item.fromJson($json) is not implemented');
    return _$ItemFromJson(json);
  }
  Map<String, dynamic> toJson() => _$ItemToJson(this);
  // Map<String, dynamic> toJson() {
  //   // TODO: implement toJson
  //   throw UnimplementedError();
}
