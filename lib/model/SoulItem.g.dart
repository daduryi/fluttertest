// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SoulItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SoulItemModel _$SoulItemModelFromJson(Map<String, dynamic> json) {
  return SoulItemModel(
    json['user'] == null
        ? null
        : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    json['content'] as String,
    (json['photos'] as List)?.map((e) => e as String)?.toList() ?? [],
    (json['tags'] as List)
            ?.map((e) =>
                e == null ? null : TagModel.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    json['liked'] as bool,
    json['likecount'] as num,
    json['commentcount'] as num,
  );
}

Map<String, dynamic> _$SoulItemModelToJson(SoulItemModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'content': instance.content,
      'photos': instance.photos,
      'tags': instance.tags,
      'liked': instance.liked,
      'likecount': instance.likecount,
      'commentcount': instance.commentcount,
    };

SoulItemsDataModel _$SoulItemsDataModelFromJson(Map<String, dynamic> json) {
  return SoulItemsDataModel(
    (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : SoulItemModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SoulItemsDataModelToJson(SoulItemsDataModel instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
