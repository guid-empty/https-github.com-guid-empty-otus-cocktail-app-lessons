// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CocktailsStateTearOff {
  const _$CocktailsStateTearOff();

// ignore: unused_element
  _CocktailsState call(
      {List<CocktailDefinition> cocktails = const <CocktailDefinition>[]}) {
    return _CocktailsState(
      cocktails: cocktails,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CocktailsState = _$CocktailsStateTearOff();

/// @nodoc
mixin _$CocktailsState {
  List<CocktailDefinition> get cocktails;

  $CocktailsStateCopyWith<CocktailsState> get copyWith;
}

/// @nodoc
abstract class $CocktailsStateCopyWith<$Res> {
  factory $CocktailsStateCopyWith(
          CocktailsState value, $Res Function(CocktailsState) then) =
      _$CocktailsStateCopyWithImpl<$Res>;
  $Res call({List<CocktailDefinition> cocktails});
}

/// @nodoc
class _$CocktailsStateCopyWithImpl<$Res>
    implements $CocktailsStateCopyWith<$Res> {
  _$CocktailsStateCopyWithImpl(this._value, this._then);

  final CocktailsState _value;
  // ignore: unused_field
  final $Res Function(CocktailsState) _then;

  @override
  $Res call({
    Object cocktails = freezed,
  }) {
    return _then(_value.copyWith(
      cocktails: cocktails == freezed
          ? _value.cocktails
          : cocktails as List<CocktailDefinition>,
    ));
  }
}

/// @nodoc
abstract class _$CocktailsStateCopyWith<$Res>
    implements $CocktailsStateCopyWith<$Res> {
  factory _$CocktailsStateCopyWith(
          _CocktailsState value, $Res Function(_CocktailsState) then) =
      __$CocktailsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<CocktailDefinition> cocktails});
}

/// @nodoc
class __$CocktailsStateCopyWithImpl<$Res>
    extends _$CocktailsStateCopyWithImpl<$Res>
    implements _$CocktailsStateCopyWith<$Res> {
  __$CocktailsStateCopyWithImpl(
      _CocktailsState _value, $Res Function(_CocktailsState) _then)
      : super(_value, (v) => _then(v as _CocktailsState));

  @override
  _CocktailsState get _value => super._value as _CocktailsState;

  @override
  $Res call({
    Object cocktails = freezed,
  }) {
    return _then(_CocktailsState(
      cocktails: cocktails == freezed
          ? _value.cocktails
          : cocktails as List<CocktailDefinition>,
    ));
  }
}

/// @nodoc
class _$_CocktailsState implements _CocktailsState {
  const _$_CocktailsState({this.cocktails = const <CocktailDefinition>[]})
      : assert(cocktails != null);

  @JsonKey(defaultValue: const <CocktailDefinition>[])
  @override
  final List<CocktailDefinition> cocktails;

  @override
  String toString() {
    return 'CocktailsState(cocktails: $cocktails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CocktailsState &&
            (identical(other.cocktails, cocktails) ||
                const DeepCollectionEquality()
                    .equals(other.cocktails, cocktails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cocktails);

  @override
  _$CocktailsStateCopyWith<_CocktailsState> get copyWith =>
      __$CocktailsStateCopyWithImpl<_CocktailsState>(this, _$identity);
}

abstract class _CocktailsState implements CocktailsState {
  const factory _CocktailsState({List<CocktailDefinition> cocktails}) =
      _$_CocktailsState;

  @override
  List<CocktailDefinition> get cocktails;
  @override
  _$CocktailsStateCopyWith<_CocktailsState> get copyWith;
}
