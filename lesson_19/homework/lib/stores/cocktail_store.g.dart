// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktail_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$_CocktailImpl on CocktailStore, Store {
  Computed<bool> _$hasResultsComputed;

  @override
  bool get hasResults =>
      (_$hasResultsComputed ??= Computed<bool>(() => super.hasResults,
              name: 'CocktailStore.hasResults'))
          .value;
  Computed<bool> _$hasCocktailComputed;

  @override
  bool get hasCocktail =>
      (_$hasCocktailComputed ??= Computed<bool>(() => super.hasCocktail,
              name: 'CocktailStore.hasCocktail'))
          .value;
  Computed<List<String>> _$favoritiesIdsComputed;

  @override
  List<String> get favoritiesIds => (_$favoritiesIdsComputed ??=
          Computed<List<String>>(() => super.favoritiesIds,
              name: 'CocktailStore.favoritiesIds'))
      .value;
  Computed<int> _$countFavoritiesComputed;

  @override
  int get countFavorities =>
      (_$countFavoritiesComputed ??= Computed<int>(() => super.countFavorities,
              name: 'CocktailStore.countFavorities'))
          .value;

  final _$currentCocktailsAtom = Atom(name: 'CocktailStore.currentCocktails');

  @override
  List<CocktailDefinition> get currentCocktails {
    _$currentCocktailsAtom.reportRead();
    return super.currentCocktails;
  }

  @override
  set currentCocktails(List<CocktailDefinition> value) {
    _$currentCocktailsAtom.reportWrite(value, super.currentCocktails, () {
      super.currentCocktails = value;
    });
  }

  final _$currentCategoryAtom = Atom(name: 'CocktailStore.currentCategory');

  @override
  CocktailCategory get currentCategory {
    _$currentCategoryAtom.reportRead();
    return super.currentCategory;
  }

  @override
  set currentCategory(CocktailCategory value) {
    _$currentCategoryAtom.reportWrite(value, super.currentCategory, () {
      super.currentCategory = value;
    });
  }

  final _$fetchCocktailsFutureAtom =
      Atom(name: 'CocktailStore.fetchCocktailsFuture');

  @override
  ObservableFuture<List<CocktailDefinition>> get fetchCocktailsFuture {
    _$fetchCocktailsFutureAtom.reportRead();
    return super.fetchCocktailsFuture;
  }

  @override
  set fetchCocktailsFuture(ObservableFuture<List<CocktailDefinition>> value) {
    _$fetchCocktailsFutureAtom.reportWrite(value, super.fetchCocktailsFuture,
        () {
      super.fetchCocktailsFuture = value;
    });
  }

  final _$currentCocktailIdAtom = Atom(name: 'CocktailStore.currentCocktailId');

  @override
  String get currentCocktailId {
    _$currentCocktailIdAtom.reportRead();
    return super.currentCocktailId;
  }

  @override
  set currentCocktailId(String value) {
    _$currentCocktailIdAtom.reportWrite(value, super.currentCocktailId, () {
      super.currentCocktailId = value;
    });
  }

  final _$currentCocktailAtom = Atom(name: 'CocktailStore.currentCocktail');

  @override
  Cocktail get currentCocktail {
    _$currentCocktailAtom.reportRead();
    return super.currentCocktail;
  }

  @override
  set currentCocktail(Cocktail value) {
    _$currentCocktailAtom.reportWrite(value, super.currentCocktail, () {
      super.currentCocktail = value;
    });
  }

  final _$fetchCocktailFutureAtom =
      Atom(name: 'CocktailStore.fetchCocktailFuture');

  @override
  ObservableFuture<Cocktail> get fetchCocktailFuture {
    _$fetchCocktailFutureAtom.reportRead();
    return super.fetchCocktailFuture;
  }

  @override
  set fetchCocktailFuture(ObservableFuture<Cocktail> value) {
    _$fetchCocktailFutureAtom.reportWrite(value, super.fetchCocktailFuture, () {
      super.fetchCocktailFuture = value;
    });
  }

  final _$favoriteCocktailsAtom = Atom(name: 'CocktailStore.favoriteCocktails');

  @override
  List<CocktailDefinition> get favoriteCocktails {
    _$favoriteCocktailsAtom.reportRead();
    return super.favoriteCocktails;
  }

  @override
  set favoriteCocktails(List<CocktailDefinition> value) {
    _$favoriteCocktailsAtom.reportWrite(value, super.favoriteCocktails, () {
      super.favoriteCocktails = value;
    });
  }

  final _$fetchCocktailAsyncAction = AsyncAction('CocktailStore.fetchCocktail');

  @override
  Future<Cocktail> fetchCocktail() {
    return _$fetchCocktailAsyncAction.run(() => super.fetchCocktail());
  }

  final _$CocktailStoreActionController =
      ActionController(name: 'CocktailStore');

  @override
  void setCategory(CocktailCategory newCategory) {
    final _$actionInfo = _$CocktailStoreActionController.startAction(
        name: 'CocktailStore.setCategory');
    try {
      return super.setCategory(newCategory);
    } finally {
      _$CocktailStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCurrentCocktailId(String id) {
    final _$actionInfo = _$CocktailStoreActionController.startAction(
        name: 'CocktailStore.setCurrentCocktailId');
    try {
      return super.setCurrentCocktailId(id);
    } finally {
      _$CocktailStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addItemToFavorities(CocktailDefinition cocktail) {
    final _$actionInfo = _$CocktailStoreActionController.startAction(
        name: 'CocktailStore.addItemToFavorities');
    try {
      return super.addItemToFavorities(cocktail);
    } finally {
      _$CocktailStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeFromFavoritiesById(String id) {
    final _$actionInfo = _$CocktailStoreActionController.startAction(
        name: 'CocktailStore.removeFromFavoritiesById');
    try {
      return super.removeFromFavoritiesById(id);
    } finally {
      _$CocktailStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getFromStorage() {
    final _$actionInfo = _$CocktailStoreActionController.startAction(
        name: 'CocktailStore.getFromStorage');
    try {
      return super.getFromStorage();
    } finally {
      _$CocktailStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addToFavoritiesByCocktail(Cocktail cocktail) {
    final _$actionInfo = _$CocktailStoreActionController.startAction(
        name: 'CocktailStore.addToFavoritiesByCocktail');
    try {
      return super.addToFavoritiesByCocktail(cocktail);
    } finally {
      _$CocktailStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentCocktails: ${currentCocktails},
currentCategory: ${currentCategory},
fetchCocktailsFuture: ${fetchCocktailsFuture},
currentCocktailId: ${currentCocktailId},
currentCocktail: ${currentCocktail},
fetchCocktailFuture: ${fetchCocktailFuture},
favoriteCocktails: ${favoriteCocktails},
hasResults: ${hasResults},
hasCocktail: ${hasCocktail},
favoritiesIds: ${favoritiesIds},
countFavorities: ${countFavorities}
    ''';
  }
}
