// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NewsItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsItemOriginModel _$NewsItemOriginModelFromJson(Map<String, dynamic> json) {
  return NewsItemOriginModel(
    text: json['text'] as String,
    color: json['color'] as String,
  );
}

Map<String, dynamic> _$NewsItemOriginModelToJson(
        NewsItemOriginModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'color': instance.color,
    };

NewsItemModel _$NewsItemModelFromJson(Map<String, dynamic> json) {
  return NewsItemModel(
    json['title'] as String,
    (json['originlist'] as List)
        ?.map((e) => e == null
            ? null
            : NewsItemOriginModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['photo'] as String,
    (json['photos'] as List)?.map((e) => e as String)?.toList(),
    _$enumDecodeNullable(_$EnumNewsItemTypeEnumMap, json['type']),
    json['candelete'] as bool,
  );
}

Map<String, dynamic> _$NewsItemModelToJson(NewsItemModel instance) {
  final val = <String, dynamic>{
    'type': _$EnumNewsItemTypeEnumMap[instance.type],
    'title': instance.title,
    'originlist': instance.originlist,
    'candelete': instance.candelete,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('photo', instance.photo);
  writeNotNull('photos', instance.photos);
  return val;
}

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$EnumNewsItemTypeEnumMap = {
  EnumNewsItemType.title: 'title',
  EnumNewsItemType.title_photo_1: 'title_photo_1',
  EnumNewsItemType.title_photo_3: 'title_photo_3',
};

NewsItemsDataModel _$NewsItemsDataModelFromJson(Map<String, dynamic> json) {
  return NewsItemsDataModel(
    (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : NewsItemModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$NewsItemsDataModelToJson(NewsItemsDataModel instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
