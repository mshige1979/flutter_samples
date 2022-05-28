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

Messages _$MessagesFromJson(Map<String, dynamic> json) {
  return _Messages.fromJson(json);
}

/// @nodoc
mixin _$Messages {
// ステータス
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError; // メッセージ一覧
  @JsonKey(name: 'list')
  List<String>? get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagesCopyWith<Messages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesCopyWith<$Res> {
  factory $MessagesCopyWith(Messages value, $Res Function(Messages) then) =
      _$MessagesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'list') List<String>? list});
}

/// @nodoc
class _$MessagesCopyWithImpl<$Res> implements $MessagesCopyWith<$Res> {
  _$MessagesCopyWithImpl(this._value, this._then);

  final Messages _value;
  // ignore: unused_field
  final $Res Function(Messages) _then;

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
abstract class _$$_MessagesCopyWith<$Res> implements $MessagesCopyWith<$Res> {
  factory _$$_MessagesCopyWith(
          _$_Messages value, $Res Function(_$_Messages) then) =
      __$$_MessagesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'list') List<String>? list});
}

/// @nodoc
class __$$_MessagesCopyWithImpl<$Res> extends _$MessagesCopyWithImpl<$Res>
    implements _$$_MessagesCopyWith<$Res> {
  __$$_MessagesCopyWithImpl(
      _$_Messages _value, $Res Function(_$_Messages) _then)
      : super(_value, (v) => _then(v as _$_Messages));

  @override
  _$_Messages get _value => super._value as _$_Messages;

  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
  }) {
    return _then(_$_Messages(
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
class _$_Messages with DiagnosticableTreeMixin implements _Messages {
  const _$_Messages(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'list') final List<String>? list})
      : _list = list;

  factory _$_Messages.fromJson(Map<String, dynamic> json) =>
      _$$_MessagesFromJson(json);

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
    return 'Messages(status: $status, list: $list)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Messages'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('list', list));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Messages &&
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
  _$$_MessagesCopyWith<_$_Messages> get copyWith =>
      __$$_MessagesCopyWithImpl<_$_Messages>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessagesToJson(this);
  }
}

abstract class _Messages implements Messages {
  const factory _Messages(
      {@JsonKey(name: 'status') required final String status,
      @JsonKey(name: 'list') final List<String>? list}) = _$_Messages;

  factory _Messages.fromJson(Map<String, dynamic> json) = _$_Messages.fromJson;

  @override // ステータス
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @override // メッセージ一覧
  @JsonKey(name: 'list')
  List<String>? get list => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MessagesCopyWith<_$_Messages> get copyWith =>
      throw _privateConstructorUsedError;
}
