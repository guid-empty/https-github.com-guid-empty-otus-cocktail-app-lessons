import 'dart:math';

import 'package:cocktail/core/models.dart';

import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';

class FilterService {
  static FilterService _instanse;

  FilterService._();

  factory FilterService.single() {
    _instanse ??= FilterService._();
    return _instanse;
  }

  final _http = AsyncCocktailRepository();

  final searchInCategoryCtrl = TextEditingController();
  final searchFiledFocus = FocusNode();

  final activeCategory$$ =
      BehaviorSubject<CocktailCategory>.seeded(CocktailCategory.values.first);

  final categoryFilterValue$$ = BehaviorSubject<String>.seeded('');

  Stream<Iterable<CocktailDefinition>> get selectedCategoryItems$ {
    return activeCategory$$.stream
        .switchMap(
            (value) => _http.fetchCocktailsByCocktailCategory(value).asStream())
        // искусственная задержка
        .delay(Duration(seconds: 1))
        .map((data) => Random().nextInt(10) + 1 > 8
            ? throw Exception('Искусственная ошибка')
            : data);
  }

  Stream<Iterable<CocktailDefinition>> get _filteredSelectedCategoryItems$ {
    return Rx.combineLatest2<Iterable<CocktailDefinition>, String,
            Iterable<CocktailDefinition>>(
        selectedCategoryItems$, categoryFilterValue$$,
        (coctailDefenitions, filter) {
      return coctailDefenitions.where((element) =>
          element.name.toLowerCase().contains(filter?.toLowerCase() ?? ''));
    });
  }

  get filteredSelectedCategoryItems$ {
    return _filteredSelectedCategoryItems$
        .mergeWith([activeCategory$$.asBroadcastStream().mapTo(null)]);
  }

  clearSearchInCategoryTextField() {
    searchInCategoryCtrl.clear();
    categoryFilterValue$$.add('');
  }

  dispose() {
    activeCategory$$.close();
    categoryFilterValue$$.close();
    searchInCategoryCtrl.dispose();
    searchFiledFocus.dispose();
  }
}
