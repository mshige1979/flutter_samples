// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Messages _$$_MessagesFromJson(Map<String, dynamic> json) => _$_Messages(
      status: json['status'] as String,
      list: (json['list'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_MessagesToJson(_$_Messages instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list,
    };
