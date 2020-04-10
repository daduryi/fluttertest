import 'package:json_annotation/json_annotation.dart';

import 'CommonModel.dart';
import 'User.dart';

part 'SoulItem.g.dart';


@JsonSerializable()
class SoulItemModel {
  final UserModel user;
  final String content;
  @JsonKey(defaultValue: [])
  final List<String> photos;
  @JsonKey(defaultValue: [])
  final List<TagModel> tags;
  final bool liked;
  final num likecount;
  final num commentcount;

  const SoulItemModel(this.user, this.content, this.photos, this.tags, this.liked, this.likecount, this.commentcount);

  factory SoulItemModel.fromJson(Map<String, dynamic> json) =>
      _$SoulItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$SoulItemModelToJson(this);
}

@JsonSerializable()
class SoulItemsDataModel {
  final List<SoulItemModel> items;

  SoulItemsDataModel(this.items);

  factory SoulItemsDataModel.fromJson(Map<String, dynamic> json) =>
      _$SoulItemsDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$SoulItemsDataModelToJson(this);
}