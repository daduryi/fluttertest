// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CommonModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteModel _$RouteModelFromJson(Map<String, dynamic> json) {
  return RouteModel();
}

Map<String, dynamic> _$RouteModelToJson(RouteModel instance) =>
    <String, dynamic>{};

TagModel _$TagModelFromJson(Map<String, dynamic> json) {
  return TagModel(
    json['name'] as String,
    json['route'] == null
        ? null
        : RouteModel.fromJson(json['route'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TagModelToJson(TagModel instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('route', instance.route);
  return val;
}
