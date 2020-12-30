// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_cocktail_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$_FavouriteCocktailStoreImpl on FavouriteCocktailStore, Store {
  Computed<bool> _$isFavouriteComputed;

  @override
  bool get isFavourite =>
      (_$isFavouriteComputed ??= Computed<bool>(() => super.isFavourite,
              name: 'FavouriteCocktailStore.isFavourite'))
          .value;

  final _$switchFavouriteAsyncAction =
      AsyncAction('FavouriteCocktailStore.switchFavourite');

  @override
  Future<void> switchFavourite() {
    return _$switchFavouriteAsyncAction.run(() => super.switchFavourite());
  }

  @override
  String toString() {
    return '''
isFavourite: ${isFavourite}
    ''';
  }
}
