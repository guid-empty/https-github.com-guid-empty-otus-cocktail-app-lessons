// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_cocktail_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$_FavouriteCocktailListStoreImpl on FavouriteCocktailListStore, Store {
  Computed<BuiltList<CocktailDefinition>> _$listComputed;

  @override
  BuiltList<CocktailDefinition> get list => (_$listComputed ??=
          Computed<BuiltList<CocktailDefinition>>(() => super.list,
              name: 'FavouriteCocktailListStore.list'))
      .value;
  Computed<StoreState> _$stateComputed;

  @override
  StoreState get state =>
      (_$stateComputed ??= Computed<StoreState>(() => super.state,
              name: 'FavouriteCocktailListStore.state'))
          .value;

  final _$refreshAsyncAction =
      AsyncAction('FavouriteCocktailListStore.refresh');

  @override
  Future<void> refresh() {
    return _$refreshAsyncAction.run(() => super.refresh());
  }

  final _$switchFavouriteAsyncAction =
      AsyncAction('FavouriteCocktailListStore.switchFavourite');

  @override
  Future<CocktailDefinition> switchFavourite(
      CocktailDefinition cocktailDefinition) {
    return _$switchFavouriteAsyncAction
        .run(() => super.switchFavourite(cocktailDefinition));
  }

  @override
  String toString() {
    return '''
list: ${list},
state: ${state}
    ''';
  }
}
