import 'dart:async';

import 'package:cocktail_app/core/src/model/cocktail.dart';
import 'package:cocktail_app/core/src/model/cocktail_definition.dart';
import 'package:cocktail_app/ui/stores/favourite_cocktail/favourite_cocktail_list_store.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';
import 'package:mobx/mobx.dart';

part 'favourite_cocktail_store.g.dart';

abstract class FavouriteCocktailStore with Store {
  final _logger = Logger();

  final FavouriteCocktailListStore _listStore;

  FavouriteCocktailStore(this._listStore, CocktailDefinition cocktailDefinition)
      : assert(_listStore != null),
        assert(cocktailDefinition != null),
        _cocktailDefinition = Observable<CocktailDefinition>(cocktailDefinition);

  factory FavouriteCocktailStore.create({
    @required FavouriteCocktailListStore listStore,
    @required Cocktail cocktail
  }) {
    return _FavouriteCocktailStoreImpl(listStore, CocktailDefinition.fromCocktail(cocktail));
  }

  Observable<CocktailDefinition> _cocktailDefinition;

  @computed
  bool get isFavourite {
    return _cocktailDefinition.value.isFavourite;
  }

  @action
  Future<void> switchFavourite() async {
    try {
      final newCocktailDefinition = await _listStore.switchFavourite(_cocktailDefinition.value);

      _cocktailDefinition.value = newCocktailDefinition;
    } catch (e) {
      _logger.e("Could not change favourite state for cocktail ${_cocktailDefinition.value.id}", e);
    }
  }
}

class _FavouriteCocktailStoreImpl extends FavouriteCocktailStore with _$_FavouriteCocktailStoreImpl {
  _FavouriteCocktailStoreImpl(FavouriteCocktailListStore listStore, CocktailDefinition cocktailDefinition)
      : super(listStore, cocktailDefinition);
}
