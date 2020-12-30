import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:cocktail_app/core/src/model/cocktail_definition.dart';
import 'package:cocktail_app/core/src/repository/async_cocktail_repository.dart';
import 'package:cocktail_app/ui/stores/store_state.dart';
import 'package:logger/logger.dart';
import 'package:mobx/mobx.dart';

part 'favourite_cocktail_list_store.g.dart';

abstract class FavouriteCocktailListStore with Store {
  final _logger = Logger();

  final AsyncCocktailRepository _repository;

  FavouriteCocktailListStore(this._repository) : assert(_repository != null);

  factory FavouriteCocktailListStore.create({
    AsyncCocktailRepository repository,
  }) {
    return _FavouriteCocktailListStoreImpl(repository)
      .._init();
  }

  Future<void> _init() async {
    refresh();
  }

  final _map = ObservableMap<String, CocktailDefinition>();
  final _state = Observable<StoreState>(StoreState.loading());

  @computed
  BuiltList<CocktailDefinition> get list {
    return _map.values.toBuiltList();
  }

  @computed
  StoreState get state {
    return _state.value;
  }

  @action
  Future<void> refresh() async {
    _setState(() async {
      final fetched = await _repository.fetchFavouriteCocktails();

      _map.clear();
      for (var value in fetched) {
        _map[value.id] = value;
      }
    });
  }

  @action
  Future<CocktailDefinition> switchFavourite(CocktailDefinition cocktailDefinition) async {
    return _setState(() async {
      final newCocktailDefinition = await _repository.switchFavourite(cocktailDefinition);
      if (newCocktailDefinition.isFavourite) {
        _map[newCocktailDefinition.id] = newCocktailDefinition;
      } else {
        _map.removeWhere((id, _) => id == newCocktailDefinition.id);
      }
      return newCocktailDefinition;
    }, orElse: () => cocktailDefinition);
  }

  T _setState<T>(T Function() updater, {T Function() orElse}) {
    _state.value = StoreState.loading();
    T result;
    try {
      result = updater();
    } catch (e) {
      _logger.e("Could not set state", e);
      _state.value = StoreState.error(e.toString());
      return orElse();
    }
    _state.value = StoreState.loaded();
    return result;
  }
}

class _FavouriteCocktailListStoreImpl extends FavouriteCocktailListStore with _$_FavouriteCocktailListStoreImpl {
  _FavouriteCocktailListStoreImpl(AsyncCocktailRepository repository) : super(repository);
}
