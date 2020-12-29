import 'package:flutter/material.dart';
import 'package:lesson_16/app/core/models.dart';
import 'package:lesson_16/app/repository/cocktail_repository.dart';

class FilterPageViewModel extends ChangeNotifier {
  FilterPageViewModel(this.repository);

  final CocktailRepository repository;

  CocktailCategory _currentCategory;
  CocktailCategory get currentCategory => _currentCategory;
  set currentCategory(CocktailCategory value) {
    _currentCategory = value;
    _fetchCocktails(_currentCategory);
    notifyListeners();
  }

  Iterable<CocktailCategory> _categories;
  Iterable<CocktailCategory> get categories => _categories;
  set categories(Iterable<CocktailCategory> value) {
    _categories = value;
    currentCategory = _categories.first;
    notifyListeners();
  }

  Iterable<CocktailDefinition> _cocktails;
  Iterable<CocktailDefinition> get cocktails => _cocktails;
  set cocktails(Iterable<CocktailDefinition> value) {
    _cocktails = value;
    notifyListeners();
  }

  void init() {
    print('init');
    _fetchCategories();
  }

  void _fetchCategories() {
    print('_fetchCategories');
    repository.getCategories().then((result) {
      categories = result;
    });
  }

  void _fetchCocktails(CocktailCategory category) {
    print('_fetchCocktails');
    cocktails = null;
    repository.fetchCocktailsByCocktailCategory(category).then((result) {
      cocktails = result;
    });
  }
}
