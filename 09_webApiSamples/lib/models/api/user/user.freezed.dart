// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiUser _$ApiUserFromJson(Map<String, dynamic> json) {
  return _ApiUser.fromJson(json);
}

/// @nodoc
mixin _$ApiUser {
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiUserCopyWith<ApiUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiUserCopyWith<$Res> {
  factory $ApiUserCopyWith(ApiUser value, $Res Function(ApiUser) then) =
      _$ApiUserCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'user') User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ApiUserCopyWithImpl<$Res> implements $ApiUserCopyWith<$Res> {
  _$ApiUserCopyWithImpl(this._value, this._then);

  final ApiUser _value;
  // ignore: unused_field
  final $Res Function(ApiUser) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_ApiUserCopyWith<$Res> implements $ApiUserCopyWith<$Res> {
  factory _$$_ApiUserCopyWith(
          _$_ApiUser value, $Res Function(_$_ApiUser) then) =
      __$$_ApiUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'user') User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_ApiUserCopyWithImpl<$Res> extends _$ApiUserCopyWithImpl<$Res>
    implements _$$_ApiUserCopyWith<$Res> {
  __$$_ApiUserCopyWithImpl(_$_ApiUser _value, $Res Function(_$_ApiUser) _then)
      : super(_value, (v) => _then(v as _$_ApiUser));

  @override
  _$_ApiUser get _value => super._value as _$_ApiUser;

  @override
  $Res call({
    Object? status = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_ApiUser(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ApiUser with DiagnosticableTreeMixin implements _ApiUser {
  const _$_ApiUser(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'user') required this.user});

  factory _$_ApiUser.fromJson(Map<String, dynamic> json) =>
      _$$_ApiUserFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'user')
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiUser(status: $status, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiUser'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiUser &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_ApiUserCopyWith<_$_ApiUser> get copyWith =>
      __$$_ApiUserCopyWithImpl<_$_ApiUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiUserToJson(this);
  }
}

abstract class _ApiUser implements ApiUser {
  const factory _ApiUser(
      {@JsonKey(name: 'status') required final String status,
      @JsonKey(name: 'user') required final User user}) = _$_ApiUser;

  factory _ApiUser.fromJson(Map<String, dynamic> json) = _$_ApiUser.fromJson;

  @override
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user')
  User get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ApiUserCopyWith<_$_ApiUser> get copyWith =>
      throw _privateConstructorUsedError;
}
