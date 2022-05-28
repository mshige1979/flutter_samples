// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiUser _$$_ApiUserFromJson(Map<String, dynamic> json) => _$_ApiUser(
      status: json['status'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ApiUserToJson(_$_ApiUser instance) =>
    <String, dynamic>{
      'status': instance.status,
      'user': instance.user.toJson(),
    };
