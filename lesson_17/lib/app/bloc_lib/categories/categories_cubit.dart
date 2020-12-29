import 'dart:collection';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_17/app/bloc_lib/categories/categories_states.dart';
import 'package:lesson_17/app/core/models.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(CategoriesInitial());

  void fetch() {
    emit(CategoriesLoadSuccess(
        categories: UnmodifiableListView(CocktailCategory.values),
        selectedCategory: CocktailCategory.values.first));
  }

  void selectCategory(CocktailCategory category) {
    assert(category != null);
    if (state is CategoriesLoadSuccess) {
      emit(CategoriesLoadSuccess(
          categories: (state as CategoriesLoadSuccess).categories,
          selectedCategory: CocktailCategory.values.first));
    }
  }
}
