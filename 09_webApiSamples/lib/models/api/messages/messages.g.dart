// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiMessages _$$_ApiMessagesFromJson(Map<String, dynamic> json) =>
    _$_ApiMessages(
      status: json['status'] as String,
      list: (json['list'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ApiMessagesToJson(_$_ApiMessages instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list,
    };
