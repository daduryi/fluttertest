// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'ret.g.dart';

@JsonSerializable()
class RetModel {
  final int ret;

  const RetModel({this.ret});

  factory RetModel.fromJson(Map<String, dynamic> json) =>
      _$RetModelFromJson(json);

  Map<String, dynamic> toJson() => _$RetModelToJson(this);
}

// @JsonSerializable()
// class ServiceGetui {
//   final String cid;
//   final String udid;

//   ServiceGetui(this.cid, this.udid);
// }

// @JsonSerializable()
// class ServiceRequestData {
//   final ServiceGetui getui;

//   ServiceRequestData(this.getui); 

// }