import 'package:json_annotation/json_annotation.dart';

part 'CommonModel.g.dart';


@JsonSerializable()
class RouteModel {

  const RouteModel();

  factory RouteModel.fromJson(Map<String, dynamic> json) =>
      _$RouteModelFromJson(json);

  Map<String, dynamic> toJson() => _$RouteModelToJson(this);
}

@JsonSerializable()
class TagModel {
  final String name;
  @JsonKey(includeIfNull: false)
  final RouteModel route;

  const TagModel(this.name, this.route);

  factory TagModel.fromJson(Map<String, dynamic> json) =>
      _$TagModelFromJson(json);

  Map<String, dynamic> toJson() => _$TagModelToJson(this);
}