import 'package:json_annotation/json_annotation.dart';

part 'background_image.g.dart';

@JsonSerializable()
class BackgroundImage {
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'id')
  int? id;

  BackgroundImage({this.title, this.image, this.id});

  factory BackgroundImage.fromJson(Map<String, dynamic> json) {
    return _$BackgroundImageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BackgroundImageToJson(this);
}
