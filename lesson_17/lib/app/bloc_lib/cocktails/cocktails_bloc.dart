import 'dart:async';
import 'dart:collection';

import 'package:lesson_17/app/bloc_lib/base_bloc.dart';
import 'package:lesson_17/app/bloc_lib/categories/categories_bloc.dart';
import 'package:lesson_17/app/bloc_lib/categories/categories_states.dart';
import 'package:lesson_17/app/core/models.dart';
import 'package:lesson_17/app/repository/cocktail_repository.dart';

import 'cocktails_events.dart';
import 'cocktails_states.dart';

class CocktailsBloc extends BaseBloc<CocktailsEvent, CocktailsState> {

  CocktailsBloc(this.cocktailRepository, this.categoriesBlocLib){
    _categoriesSubscription = this.categoriesBlocLib.listen((state) {
      if (state is CategoriesLoadSuccess && state.selectedCategory != null){
        _fetchCocktails(state.selectedCategory);
      }
    });
  }

  StreamSubscription _categoriesSubscription;

  final CocktailRepository cocktailRepository;

  final CategoriesBloc categoriesBlocLib;

  @override
  CocktailsState get initialState => CocktailsInitial();

  @override
  void close() {
    _categoriesSubscription.cancel();
    super.close();
  }

  @override
  void onEvent(CocktailsEvent event) {
    if (event is CocktailsFetched) {
      _fetchCocktails(event.category);
    }
  }



  Future<void> _fetchCocktails(CocktailCategory category) async {
    assert(category != null);
    try {
      updateState(CocktailsLoadInProgress());
      final cocktails =
          await cocktailRepository.fetchCocktailsByCocktailCategory(category);
      updateState(
          CocktailsLoadSuccess(cocktails: UnmodifiableListView(cocktails)));
    } catch (e) {
      print(e);
      updateState(CocktailsLoadFailure(e.toString()));
    }
  }
}
