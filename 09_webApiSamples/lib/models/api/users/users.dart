import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../user/user.dart';

part 'users.freezed.dart';
part 'users.g.dart';

@freezed
class ApiUsers with _$ApiUsers {
  @JsonSerializable(explicitToJson: true)
  const factory ApiUsers({
    @JsonKey(name: 'status')
    required String status,
    @JsonKey(name: 'list')
    List<User>? list
  }) = _ApiUsers;

  factory ApiUsers.fromJson(Map<String, dynamic> json) =>
      _$ApiUsersFromJson(json);
}
