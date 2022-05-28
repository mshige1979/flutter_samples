import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'messages.freezed.dart';
part 'messages.g.dart';

@freezed
class Messages with _$Messages {
  @JsonSerializable(explicitToJson: true)
  const factory Messages({
    // ステータス
    @JsonKey(name: 'status')
    required String status,
    // メッセージ一覧
    @JsonKey(name: 'list')
    List<String>? list
  }) = _Messages;

  factory Messages.fromJson(Map<String, dynamic> json) =>
      _$MessagesFromJson(json);
}
