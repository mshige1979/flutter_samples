// ignore_for_file: invalid_annotation_target
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../user/user.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class ApiUser with _$ApiUser {
  @JsonSerializable(explicitToJson: true)
  const factory ApiUser({
    @JsonKey(name: 'status')
    required String status,
    @JsonKey(name: 'user')
    required User user,
  }) = _ApiUser;

  factory ApiUser.fromJson(Map<String, dynamic> json) =>
      _$ApiUserFromJson(json);
}