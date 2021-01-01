// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'favorites_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FavoritesViewModelTearOff {
  const _$FavoritesViewModelTearOff();

// ignore: unused_element
  Favorite favorite() {
    return const Favorite();
  }

// ignore: unused_element
  NotFavorite not() {
    return const NotFavorite();
  }
}

/// @nodoc
// ignore: unused_element
const $FavoritesViewModel = _$FavoritesViewModelTearOff();

/// @nodoc
mixin _$FavoritesViewModel {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult favorite(),
    @required TResult not(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult favorite(),
    TResult not(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult favorite(Favorite value),
    @required TResult not(NotFavorite value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult favorite(Favorite value),
    TResult not(NotFavorite value),
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
abstract class $FavoriteCopyWith<$Res> {
  factory $FavoriteCopyWith(Favorite value, $Res Function(Favorite) then) =
      _$FavoriteCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteCopyWithImpl<$Res>
    extends _$FavoritesViewModelCopyWithImpl<$Res>
    implements $FavoriteCopyWith<$Res> {
  _$FavoriteCopyWithImpl(Favorite _value, $Res Function(Favorite) _then)
      : super(_value, (v) => _then(v as Favorite));

  @override
  Favorite get _value => super._value as Favorite;
}

/// @nodoc
class _$Favorite implements Favorite {
  const _$Favorite();

  @override
  String toString() {
    return 'FavoritesViewModel.favorite()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Favorite);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult favorite(),
    @required TResult not(),
  }) {
    assert(favorite != null);
    assert(not != null);
    return favorite();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult favorite(),
    TResult not(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (favorite != null) {
      return favorite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult favorite(Favorite value),
    @required TResult not(NotFavorite value),
  }) {
    assert(favorite != null);
    assert(not != null);
    return favorite(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult favorite(Favorite value),
    TResult not(NotFavorite value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (favorite != null) {
      return favorite(this);
    }
    return orElse();
  }
}

abstract class Favorite implements FavoritesViewModel {
  const factory Favorite() = _$Favorite;
}

/// @nodoc
abstract class $NotFavoriteCopyWith<$Res> {
  factory $NotFavoriteCopyWith(
          NotFavorite value, $Res Function(NotFavorite) then) =
      _$NotFavoriteCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotFavoriteCopyWithImpl<$Res>
    extends _$FavoritesViewModelCopyWithImpl<$Res>
    implements $NotFavoriteCopyWith<$Res> {
  _$NotFavoriteCopyWithImpl(
      NotFavorite _value, $Res Function(NotFavorite) _then)
      : super(_value, (v) => _then(v as NotFavorite));

  @override
  NotFavorite get _value => super._value as NotFavorite;
}

/// @nodoc
class _$NotFavorite implements NotFavorite {
  const _$NotFavorite();

  @override
  String toString() {
    return 'FavoritesViewModel.not()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotFavorite);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult favorite(),
    @required TResult not(),
  }) {
    assert(favorite != null);
    assert(not != null);
    return not();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult favorite(),
    TResult not(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (not != null) {
      return not();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult favorite(Favorite value),
    @required TResult not(NotFavorite value),
  }) {
    assert(favorite != null);
    assert(not != null);
    return not(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult favorite(Favorite value),
    TResult not(NotFavorite value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (not != null) {
      return not(this);
    }
    return orElse();
  }
}

abstract class NotFavorite implements FavoritesViewModel {
  const factory NotFavorite() = _$NotFavorite;
}
