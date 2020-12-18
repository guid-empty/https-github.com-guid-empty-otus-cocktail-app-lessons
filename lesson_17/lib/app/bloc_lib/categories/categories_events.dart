import 'package:flutter/foundation.dart';
import 'package:lesson_17/app/core/models.dart';

@immutable
class CategoriesEvent {}

class CategoriesFetched extends CategoriesEvent {}

class CategoriesCategorySelected extends CategoriesEvent {
  CategoriesCategorySelected(this.category);

  final CocktailCategory category;
}
