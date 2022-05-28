// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiUsers _$$_ApiUsersFromJson(Map<String, dynamic> json) => _$_ApiUsers(
      status: json['status'] as String,
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ApiUsersToJson(_$_ApiUsers instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list?.map((e) => e.toJson()).toList(),
    };
