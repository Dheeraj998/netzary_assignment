import 'package:json_annotation/json_annotation.dart';

import 'background_image.dart';
import 'category.dart';
import 'datum.dart';
import 'transact.dart';

part 'networking.g.dart';

@JsonSerializable()
class Networking {
  @JsonKey(name: 'categories')
  List<Category>? categories;
  @JsonKey(name: 'data')
  List<Datum>? data;
  @JsonKey(name: 'transacts')
  List<Transact>? transacts;
  @JsonKey(name: 'background_images')
  List<BackgroundImage>? backgroundImages;

  Networking({
    this.categories,
    this.data,
    this.transacts,
    this.backgroundImages,
  });

  factory Networking.fromJson(Map<String, dynamic> json) {
    return _$NetworkingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NetworkingToJson(this);
}
