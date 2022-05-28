// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'messages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiMessages _$ApiMessagesFromJson(Map<String, dynamic> json) {
  return _ApiMessages.fromJson(json);
}

/// @nodoc
mixin _$ApiMessages {
// ステータス
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError; // メッセージ一覧
  @JsonKey(name: 'list')
  List<String>? get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiMessagesCopyWith<ApiMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiMessagesCopyWith<$Res> {
  factory $ApiMessagesCopyWith(
          ApiMessages value, $Res Function(ApiMessages) then) =
      _$ApiMessagesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'list') List<String>? list});
}

/// @nodoc
class _$ApiMessagesCopyWithImpl<$Res> implements $ApiMessagesCopyWith<$Res> {
  _$ApiMessagesCopyWithImpl(this._value, this._then);

  final ApiMessages _value;
  // ignore: unused_field
  final $Res Function(ApiMessages) _then;

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
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ApiMessagesCopyWith<$Res>
    implements $ApiMessagesCopyWith<$Res> {
  factory _$$_ApiMessagesCopyWith(
          _$_ApiMessages value, $Res Function(_$_ApiMessages) then) =
      __$$_ApiMessagesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'list') List<String>? list});
}

/// @nodoc
class __$$_ApiMessagesCopyWithImpl<$Res> extends _$ApiMessagesCopyWithImpl<$Res>
    implements _$$_ApiMessagesCopyWith<$Res> {
  __$$_ApiMessagesCopyWithImpl(
      _$_ApiMessages _value, $Res Function(_$_ApiMessages) _then)
      : super(_value, (v) => _then(v as _$_ApiMessages));

  @override
  _$_ApiMessages get _value => super._value as _$_ApiMessages;

  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
  }) {
    return _then(_$_ApiMessages(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ApiMessages with DiagnosticableTreeMixin implements _ApiMessages {
  const _$_ApiMessages(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'list') final List<String>? list})
      : _list = list;

  factory _$_ApiMessages.fromJson(Map<String, dynamic> json) =>
      _$$_ApiMessagesFromJson(json);

// ステータス
  @override
  @JsonKey(name: 'status')
  final String status;
// メッセージ一覧
  final List<String>? _list;
// メッセージ一覧
  @override
  @JsonKey(name: 'list')
  List<String>? get list {
    final value = _list;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiMessages(status: $status, list: $list)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiMessages'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('list', list));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiMessages &&
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
  _$$_ApiMessagesCopyWith<_$_ApiMessages> get copyWith =>
      __$$_ApiMessagesCopyWithImpl<_$_ApiMessages>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiMessagesToJson(this);
  }
}

abstract class _ApiMessages implements ApiMessages {
  const factory _ApiMessages(
      {@JsonKey(name: 'status') required final String status,
      @JsonKey(name: 'list') final List<String>? list}) = _$_ApiMessages;

  factory _ApiMessages.fromJson(Map<String, dynamic> json) =
      _$_ApiMessages.fromJson;

  @override // ステータス
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @override // メッセージ一覧
  @JsonKey(name: 'list')
  List<String>? get list => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ApiMessagesCopyWith<_$_ApiMessages> get copyWith =>
      throw _privateConstructorUsedError;
}
