// ignore_for_file: invalid_annotation_target
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'messages.freezed.dart';
part 'messages.g.dart';

@freezed
class ApiMessages with _$ApiMessages {
  @JsonSerializable(explicitToJson: true)
  const factory ApiMessages({
    // ステータス
    @JsonKey(name: 'status')
    required String status,
    // メッセージ一覧
    @JsonKey(name: 'list')
    List<String>? list
  }) = _ApiMessages;

  factory ApiMessages.fromJson(Map<String, dynamic> json) =>
      _$ApiMessagesFromJson(json);
}
