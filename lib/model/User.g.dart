// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    json['id_'] as num,
    json['name'] as String,
    json['icon'] as String,
    json['desc'] as String,
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id_': instance.id_,
      'name': instance.name,
      'icon': instance.icon,
      'desc': instance.desc,
    };
