import 'package:lesson_17/app/bloc_lib/categories/categories_events.dart';
import 'package:lesson_17/app/bloc_lib/cocktails/cocktails_events.dart';
import 'package:lesson_17/app/core/models.dart';

import 'categories/categories_bloc.dart';
import 'cocktails/cocktails_bloc_lib.dart';

class FilterPageProxyBloc {
  FilterPageProxyBloc(this.categoriesBloc, this.cocktailsBloc);

  final CategoriesBloc categoriesBloc;

  final CocktailsBlocLib cocktailsBloc;

  void selectCategory(CocktailCategory category) {
    categoriesBloc.add(CategoriesCategorySelected(category));
    cocktailsBloc.add(CocktailsFetched(category));
  }

  void dispose(){
    categoriesBloc.close();
    cocktailsBloc.close();
  }
}
