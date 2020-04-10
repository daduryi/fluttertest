import 'package:json_annotation/json_annotation.dart';

part 'User.g.dart';

@JsonSerializable()
class UserModel {
  final num id_;
  final String name;
  final String icon;
  final String desc;

  const UserModel(this.id_, this.name, this.icon, this.desc);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
