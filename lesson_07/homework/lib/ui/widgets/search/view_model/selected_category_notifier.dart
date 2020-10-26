import 'package:cocktail/core/models.dart';
import 'package:flutter/cupertino.dart';

class SelectedCategoryNotifier extends ChangeNotifier {
  static final SelectedCategoryNotifier _instance = SelectedCategoryNotifier._();

  CocktailCategory _category = CocktailCategory.values.first;

  set category(CocktailCategory value) {
    _category = value;
    notifyListeners();
  }

  CocktailCategory get category => _category;

  SelectedCategoryNotifier._();

  factory SelectedCategoryNotifier() {
    return _instance;
  }
}