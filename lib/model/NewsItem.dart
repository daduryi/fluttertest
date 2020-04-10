// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'NewsItem.g.dart';

@JsonSerializable()
class NewsItemOriginModel {
  final String text;
  final String color;

  const NewsItemOriginModel({this.text, this.color});

  factory NewsItemOriginModel.fromJson(Map<String, dynamic> json) =>
      _$NewsItemOriginModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsItemOriginModelToJson(this);
}

@JsonSerializable()
class NewsItemModel {
  final EnumNewsItemType type;
  final String title;
  final List<NewsItemOriginModel> originlist;
  final bool candelete;
  @JsonKey(includeIfNull: false)
  final String photo;
  @JsonKey(includeIfNull: false)
  final List<String> photos;

  NewsItemModel(this.title, this.originlist, this.photo, this.photos, this.type,
      this.candelete);

  factory NewsItemModel.fromJson(Map<String, dynamic> json) =>
      _$NewsItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsItemModelToJson(this);
}

@JsonSerializable()
class NewsItemsDataModel {
  final List<NewsItemModel> items;

  NewsItemsDataModel(this.items);

  factory NewsItemsDataModel.fromJson(Map<String, dynamic> json) =>
      _$NewsItemsDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsItemsDataModelToJson(this);
}

enum EnumNewsItemType {
  title,
  title_photo_1,
  title_photo_3,
}
