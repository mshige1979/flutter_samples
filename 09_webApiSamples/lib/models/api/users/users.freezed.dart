// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiUsers _$ApiUsersFromJson(Map<String, dynamic> json) {
  return _ApiUsers.fromJson(json);
}

/// @nodoc
mixin _$ApiUsers {
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'list')
  List<User>? get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiUsersCopyWith<ApiUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiUsersCopyWith<$Res> {
  factory $ApiUsersCopyWith(ApiUsers value, $Res Function(ApiUsers) then) =
      _$ApiUsersCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'list') List<User>? list});
}

/// @nodoc
class _$ApiUsersCopyWithImpl<$Res> implements $ApiUsersCopyWith<$Res> {
  _$ApiUsersCopyWithImpl(this._value, this._then);

  final ApiUsers _value;
  // ignore: unused_field
  final $Res Function(ApiUsers) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ApiUsersCopyWith<$Res> implements $ApiUsersCopyWith<$Res> {
  factory _$$_ApiUsersCopyWith(
          _$_ApiUsers value, $Res Function(_$_ApiUsers) then) =
      __$$_ApiUsersCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'list') List<User>? list});
}

/// @nodoc
class __$$_ApiUsersCopyWithImpl<$Res> extends _$ApiUsersCopyWithImpl<$Res>
    implements _$$_ApiUsersCopyWith<$Res> {
  __$$_ApiUsersCopyWithImpl(
      _$_ApiUsers _value, $Res Function(_$_ApiUsers) _then)
      : super(_value, (v) => _then(v as _$_ApiUsers));

  @override
  _$_ApiUsers get _value => super._value as _$_ApiUsers;

  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
  }) {
    return _then(_$_ApiUsers(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ApiUsers with DiagnosticableTreeMixin implements _ApiUsers {
  const _$_ApiUsers(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'list') final List<User>? list})
      : _list = list;

  factory _$_ApiUsers.fromJson(Map<String, dynamic> json) =>
      _$$_ApiUsersFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String status;
  final List<User>? _list;
  @override
  @JsonKey(name: 'list')
  List<User>? get list {
    final value = _list;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiUsers(status: $status, list: $list)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiUsers'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('list', list));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiUsers &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  _$$_ApiUsersCopyWith<_$_ApiUsers> get copyWith =>
      __$$_ApiUsersCopyWithImpl<_$_ApiUsers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiUsersToJson(this);
  }
}

abstract class _ApiUsers implements ApiUsers {
  const factory _ApiUsers(
      {@JsonKey(name: 'status') required final String status,
      @JsonKey(name: 'list') final List<User>? list}) = _$_ApiUsers;

  factory _ApiUsers.fromJson(Map<String, dynamic> json) = _$_ApiUsers.fromJson;

  @override
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'list')
  List<User>? get list => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ApiUsersCopyWith<_$_ApiUsers> get copyWith =>
      throw _privateConstructorUsedError;
}
