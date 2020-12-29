// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SimpleAppStateTearOff {
  const _$SimpleAppStateTearOff();

// ignore: unused_element
  _SimpleAppState call({int count, int remainder}) {
    return _SimpleAppState(
      count: count,
      remainder: remainder,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SimpleAppState = _$SimpleAppStateTearOff();

/// @nodoc
mixin _$SimpleAppState {
  int get count;
  int get remainder;

  $SimpleAppStateCopyWith<SimpleAppState> get copyWith;
}

/// @nodoc
abstract class $SimpleAppStateCopyWith<$Res> {
  factory $SimpleAppStateCopyWith(
          SimpleAppState value, $Res Function(SimpleAppState) then) =
      _$SimpleAppStateCopyWithImpl<$Res>;
  $Res call({int count, int remainder});
}

/// @nodoc
class _$SimpleAppStateCopyWithImpl<$Res>
    implements $SimpleAppStateCopyWith<$Res> {
  _$SimpleAppStateCopyWithImpl(this._value, this._then);

  final SimpleAppState _value;
  // ignore: unused_field
  final $Res Function(SimpleAppState) _then;

  @override
  $Res call({
    Object count = freezed,
    Object remainder = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
      remainder: remainder == freezed ? _value.remainder : remainder as int,
    ));
  }
}

/// @nodoc
abstract class _$SimpleAppStateCopyWith<$Res>
    implements $SimpleAppStateCopyWith<$Res> {
  factory _$SimpleAppStateCopyWith(
          _SimpleAppState value, $Res Function(_SimpleAppState) then) =
      __$SimpleAppStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, int remainder});
}

/// @nodoc
class __$SimpleAppStateCopyWithImpl<$Res>
    extends _$SimpleAppStateCopyWithImpl<$Res>
    implements _$SimpleAppStateCopyWith<$Res> {
  __$SimpleAppStateCopyWithImpl(
      _SimpleAppState _value, $Res Function(_SimpleAppState) _then)
      : super(_value, (v) => _then(v as _SimpleAppState));

  @override
  _SimpleAppState get _value => super._value as _SimpleAppState;

  @override
  $Res call({
    Object count = freezed,
    Object remainder = freezed,
  }) {
    return _then(_SimpleAppState(
      count: count == freezed ? _value.count : count as int,
      remainder: remainder == freezed ? _value.remainder : remainder as int,
    ));
  }
}

/// @nodoc
class _$_SimpleAppState implements _SimpleAppState {
  const _$_SimpleAppState({this.count, this.remainder});

  @override
  final int count;
  @override
  final int remainder;

  @override
  String toString() {
    return 'SimpleAppState(count: $count, remainder: $remainder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SimpleAppState &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.remainder, remainder) ||
                const DeepCollectionEquality()
                    .equals(other.remainder, remainder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(remainder);

  @override
  _$SimpleAppStateCopyWith<_SimpleAppState> get copyWith =>
      __$SimpleAppStateCopyWithImpl<_SimpleAppState>(this, _$identity);
}

abstract class _SimpleAppState implements SimpleAppState {
  const factory _SimpleAppState({int count, int remainder}) = _$_SimpleAppState;

  @override
  int get count;
  @override
  int get remainder;
  @override
  _$SimpleAppStateCopyWith<_SimpleAppState> get copyWith;
}
