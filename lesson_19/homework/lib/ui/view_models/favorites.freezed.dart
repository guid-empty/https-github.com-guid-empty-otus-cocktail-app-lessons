// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'favorites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FavoritesViewModelTearOff {
  const _$FavoritesViewModelTearOff();

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Success success({List<CocktailDefinition> cocktails}) {
    return Success(
      cocktails: cocktails,
    );
  }

// ignore: unused_element
  Empty empty() {
    return const Empty();
  }
}

/// @nodoc
// ignore: unused_element
const $FavoritesViewModel = _$FavoritesViewModelTearOff();

/// @nodoc
mixin _$FavoritesViewModel {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult success(List<CocktailDefinition> cocktails),
    @required TResult empty(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult success(List<CocktailDefinition> cocktails),
    TResult empty(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(Loading value),
    @required TResult success(Success value),
    @required TResult empty(Empty value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(Loading value),
    TResult success(Success value),
    TResult empty(Empty value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FavoritesViewModelCopyWith<$Res> {
  factory $FavoritesViewModelCopyWith(
          FavoritesViewModel value, $Res Function(FavoritesViewModel) then) =
      _$FavoritesViewModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoritesViewModelCopyWithImpl<$Res>
    implements $FavoritesViewModelCopyWith<$Res> {
  _$FavoritesViewModelCopyWithImpl(this._value, this._then);

  final FavoritesViewModel _value;
  // ignore: unused_field
  final $Res Function(FavoritesViewModel) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$FavoritesViewModelCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'FavoritesViewModel.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult success(List<CocktailDefinition> cocktails),
    @required TResult empty(),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(empty != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult success(List<CocktailDefinition> cocktails),
    TResult empty(),
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
    @required TResult loading(Loading value),
    @required TResult success(Success value),
    @required TResult empty(Empty value),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(empty != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(Loading value),
    TResult success(Success value),
    TResult empty(Empty value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements FavoritesViewModel {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({List<CocktailDefinition> cocktails});
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res> extends _$FavoritesViewModelCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object cocktails = freezed,
  }) {
    return _then(Success(
      cocktails: cocktails == freezed
          ? _value.cocktails
          : cocktails as List<CocktailDefinition>,
    ));
  }
}

/// @nodoc
class _$Success implements Success {
  const _$Success({this.cocktails});

  @override
  final List<CocktailDefinition> cocktails;

  @override
  String toString() {
    return 'FavoritesViewModel.success(cocktails: $cocktails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success &&
            (identical(other.cocktails, cocktails) ||
                const DeepCollectionEquality()
                    .equals(other.cocktails, cocktails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cocktails);

  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult success(List<CocktailDefinition> cocktails),
    @required TResult empty(),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(empty != null);
    return success(cocktails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult success(List<CocktailDefinition> cocktails),
    TResult empty(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(cocktails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(Loading value),
    @required TResult success(Success value),
    @required TResult empty(Empty value),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(empty != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(Loading value),
    TResult success(Success value),
    TResult empty(Empty value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements FavoritesViewModel {
  const factory Success({List<CocktailDefinition> cocktails}) = _$Success;

  List<CocktailDefinition> get cocktails;
  $SuccessCopyWith<Success> get copyWith;
}

/// @nodoc
abstract class $EmptyCopyWith<$Res> {
  factory $EmptyCopyWith(Empty value, $Res Function(Empty) then) =
      _$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCopyWithImpl<$Res> extends _$FavoritesViewModelCopyWithImpl<$Res>
    implements $EmptyCopyWith<$Res> {
  _$EmptyCopyWithImpl(Empty _value, $Res Function(Empty) _then)
      : super(_value, (v) => _then(v as Empty));

  @override
  Empty get _value => super._value as Empty;
}

/// @nodoc
class _$Empty implements Empty {
  const _$Empty();

  @override
  String toString() {
    return 'FavoritesViewModel.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult success(List<CocktailDefinition> cocktails),
    @required TResult empty(),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(empty != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult success(List<CocktailDefinition> cocktails),
    TResult empty(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(Loading value),
    @required TResult success(Success value),
    @required TResult empty(Empty value),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(empty != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(Loading value),
    TResult success(Success value),
    TResult empty(Empty value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements FavoritesViewModel {
  const factory Empty() = _$Empty;
}
