// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

// ignore: unused_element
  _AppState call({FavoritesState favoriteState}) {
    return _AppState(
      favoriteState: favoriteState,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  FavoritesState get favoriteState;

  $AppStateCopyWith<AppState> get copyWith;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({FavoritesState favoriteState});

  $FavoritesStateCopyWith<$Res> get favoriteState;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object favoriteState = freezed,
  }) {
    return _then(_value.copyWith(
      favoriteState: favoriteState == freezed
          ? _value.favoriteState
          : favoriteState as FavoritesState,
    ));
  }

  @override
  $FavoritesStateCopyWith<$Res> get favoriteState {
    if (_value.favoriteState == null) {
      return null;
    }
    return $FavoritesStateCopyWith<$Res>(_value.favoriteState, (value) {
      return _then(_value.copyWith(favoriteState: value));
    });
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call({FavoritesState favoriteState});

  @override
  $FavoritesStateCopyWith<$Res> get favoriteState;
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object favoriteState = freezed,
  }) {
    return _then(_AppState(
      favoriteState: favoriteState == freezed
          ? _value.favoriteState
          : favoriteState as FavoritesState,
    ));
  }
}

/// @nodoc
class _$_AppState implements _AppState {
  const _$_AppState({this.favoriteState});

  @override
  final FavoritesState favoriteState;

  @override
  String toString() {
    return 'AppState(favoriteState: $favoriteState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppState &&
            (identical(other.favoriteState, favoriteState) ||
                const DeepCollectionEquality()
                    .equals(other.favoriteState, favoriteState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(favoriteState);

  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState({FavoritesState favoriteState}) = _$_AppState;

  @override
  FavoritesState get favoriteState;
  @override
  _$AppStateCopyWith<_AppState> get copyWith;
}
