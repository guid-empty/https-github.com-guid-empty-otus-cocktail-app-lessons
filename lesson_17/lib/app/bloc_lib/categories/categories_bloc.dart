import 'dart:collection';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_17/app/bloc_lib/categories/categories_events.dart';
import 'package:lesson_17/app/bloc_lib/categories/categories_states.dart';
import 'package:lesson_17/app/core/models.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(CategoriesInitial());

  @override
  Stream<CategoriesState> mapEventToState(CategoriesEvent event) async* {

    if (event is CategoriesFetched) {

      yield CategoriesLoadSuccess(
          categories: UnmodifiableListView(CocktailCategory.values),
          selectedCategory: CocktailCategory.values.first);

    } else if (event is CategoriesCategorySelected &&
        state is CategoriesLoadSuccess) {

      final dateState = state as CategoriesLoadSuccess;

      yield dateState.copyWith(selectedCategory: event.category);
    }
  }
  
}
