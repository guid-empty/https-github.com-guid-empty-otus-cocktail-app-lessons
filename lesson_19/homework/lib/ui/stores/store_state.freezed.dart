// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'store_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StoreStateTearOff {
  const _$StoreStateTearOff();

// ignore: unused_element
  StoreStateFailed error(String reason) {
    return StoreStateFailed(
      reason,
    );
  }

// ignore: unused_element
  StoreStateLoading loading() {
    return const StoreStateLoading();
  }

// ignore: unused_element
  StoreStateLoaded loaded() {
    return const StoreStateLoaded();
  }
}

/// @nodoc
// ignore: unused_element
const $StoreState = _$StoreStateTearOff();

/// @nodoc
mixin _$StoreState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult error(String reason),
    @required TResult loading(),
    @required TResult loaded(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult error(String reason),
    TResult loading(),
    TResult loaded(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult error(StoreStateFailed value),
    @required TResult loading(StoreStateLoading value),
    @required TResult loaded(StoreStateLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult error(StoreStateFailed value),
    TResult loading(StoreStateLoading value),
    TResult loaded(StoreStateLoaded value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $StoreStateCopyWith<$Res> {
  factory $StoreStateCopyWith(
          StoreState value, $Res Function(StoreState) then) =
      _$StoreStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreStateCopyWithImpl<$Res> implements $StoreStateCopyWith<$Res> {
  _$StoreStateCopyWithImpl(this._value, this._then);

  final StoreState _value;
  // ignore: unused_field
  final $Res Function(StoreState) _then;
}

/// @nodoc
abstract class $StoreStateFailedCopyWith<$Res> {
  factory $StoreStateFailedCopyWith(
          StoreStateFailed value, $Res Function(StoreStateFailed) then) =
      _$StoreStateFailedCopyWithImpl<$Res>;
  $Res call({String reason});
}

/// @nodoc
class _$StoreStateFailedCopyWithImpl<$Res>
    extends _$StoreStateCopyWithImpl<$Res>
    implements $StoreStateFailedCopyWith<$Res> {
  _$StoreStateFailedCopyWithImpl(
      StoreStateFailed _value, $Res Function(StoreStateFailed) _then)
      : super(_value, (v) => _then(v as StoreStateFailed));

  @override
  StoreStateFailed get _value => super._value as StoreStateFailed;

  @override
  $Res call({
    Object reason = freezed,
  }) {
    return _then(StoreStateFailed(
      reason == freezed ? _value.reason : reason as String,
    ));
  }
}

/// @nodoc
class _$StoreStateFailed implements StoreStateFailed {
  const _$StoreStateFailed(this.reason) : assert(reason != null);

  @override
  final String reason;

  @override
  String toString() {
    return 'StoreState.error(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StoreStateFailed &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reason);

  @override
  $StoreStateFailedCopyWith<StoreStateFailed> get copyWith =>
      _$StoreStateFailedCopyWithImpl<StoreStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult error(String reason),
    @required TResult loading(),
    @required TResult loaded(),
  }) {
    assert(error != null);
    assert(loading != null);
    assert(loaded != null);
    return error(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult error(String reason),
    TResult loading(),
    TResult loaded(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult error(StoreStateFailed value),
    @required TResult loading(StoreStateLoading value),
    @required TResult loaded(StoreStateLoaded value),
  }) {
    assert(error != null);
    assert(loading != null);
    assert(loaded != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult error(StoreStateFailed value),
    TResult loading(StoreStateLoading value),
    TResult loaded(StoreStateLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StoreStateFailed implements StoreState {
  const factory StoreStateFailed(String reason) = _$StoreStateFailed;

  String get reason;
  $StoreStateFailedCopyWith<StoreStateFailed> get copyWith;
}

/// @nodoc
abstract class $StoreStateLoadingCopyWith<$Res> {
  factory $StoreStateLoadingCopyWith(
          StoreStateLoading value, $Res Function(StoreStateLoading) then) =
      _$StoreStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreStateLoadingCopyWithImpl<$Res>
    extends _$StoreStateCopyWithImpl<$Res>
    implements $StoreStateLoadingCopyWith<$Res> {
  _$StoreStateLoadingCopyWithImpl(
      StoreStateLoading _value, $Res Function(StoreStateLoading) _then)
      : super(_value, (v) => _then(v as StoreStateLoading));

  @override
  StoreStateLoading get _value => super._value as StoreStateLoading;
}

/// @nodoc
class _$StoreStateLoading implements StoreStateLoading {
  const _$StoreStateLoading();

  @override
  String toString() {
    return 'StoreState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StoreStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult error(String reason),
    @required TResult loading(),
    @required TResult loaded(),
  }) {
    assert(error != null);
    assert(loading != null);
    assert(loaded != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult error(String reason),
    TResult loading(),
    TResult loaded(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult error(StoreStateFailed value),
    @required TResult loading(StoreStateLoading value),
    @required TResult loaded(StoreStateLoaded value),
  }) {
    assert(error != null);
    assert(loading != null);
    assert(loaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult error(StoreStateFailed value),
    TResult loading(StoreStateLoading value),
    TResult loaded(StoreStateLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StoreStateLoading implements StoreState {
  const factory StoreStateLoading() = _$StoreStateLoading;
}

/// @nodoc
abstract class $StoreStateLoadedCopyWith<$Res> {
  factory $StoreStateLoadedCopyWith(
          StoreStateLoaded value, $Res Function(StoreStateLoaded) then) =
      _$StoreStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreStateLoadedCopyWithImpl<$Res>
    extends _$StoreStateCopyWithImpl<$Res>
    implements $StoreStateLoadedCopyWith<$Res> {
  _$StoreStateLoadedCopyWithImpl(
      StoreStateLoaded _value, $Res Function(StoreStateLoaded) _then)
      : super(_value, (v) => _then(v as StoreStateLoaded));

  @override
  StoreStateLoaded get _value => super._value as StoreStateLoaded;
}

/// @nodoc
class _$StoreStateLoaded implements StoreStateLoaded {
  const _$StoreStateLoaded();

  @override
  String toString() {
    return 'StoreState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StoreStateLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult error(String reason),
    @required TResult loading(),
    @required TResult loaded(),
  }) {
    assert(error != null);
    assert(loading != null);
    assert(loaded != null);
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult error(String reason),
    TResult loading(),
    TResult loaded(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult error(StoreStateFailed value),
    @required TResult loading(StoreStateLoading value),
    @required TResult loaded(StoreStateLoaded value),
  }) {
    assert(error != null);
    assert(loading != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult error(StoreStateFailed value),
    TResult loading(StoreStateLoading value),
    TResult loaded(StoreStateLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class StoreStateLoaded implements StoreState {
  const factory StoreStateLoaded() = _$StoreStateLoaded;
}
