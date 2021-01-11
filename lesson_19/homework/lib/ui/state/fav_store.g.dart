// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fav_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FavStore on _FavStore, Store {
  final _$_FavStoreActionController = ActionController(name: '_FavStore');

  @override
  void addToFavourites(CocktailDefinition cocktail) {
    final _$actionInfo = _$_FavStoreActionController.startAction(
        name: '_FavStore.addToFavourites');
    try {
      return super.addToFavourites(cocktail);
    } finally {
      _$_FavStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeFromFavourites(CocktailDefinition cocktail) {
    final _$actionInfo = _$_FavStoreActionController.startAction(
        name: '_FavStore.removeFromFavourites');
    try {
      return super.removeFromFavourites(cocktail);
    } finally {
      _$_FavStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
