import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../user/user.dart';

part 'users.freezed.dart';
part 'users.g.dart';

@freezed
class Users with _$Users {
  @JsonSerializable(explicitToJson: true)
  const factory Users({
    @JsonKey(name: 'status')
    required String status,
    @JsonKey(name: 'list')
    List<User>? list
  }) = _Users;

  factory Users.fromJson(Map<String, dynamic> json) =>
      _$UsersFromJson(json);
}
