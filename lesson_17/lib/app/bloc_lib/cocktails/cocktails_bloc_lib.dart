import 'dart:collection';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_17/app/bloc_lib/cocktails/cocktails_events.dart';
import 'package:lesson_17/app/bloc_lib/cocktails/cocktails_states.dart';
import 'package:lesson_17/app/core/models.dart';
import 'package:lesson_17/app/repository/cocktail_repository.dart';

class CocktailsBlocLib extends Bloc<CocktailsEvent, CocktailsState> {
  CocktailsBlocLib(this.cocktailRepository) : super(CocktailsInitial());

  final CocktailRepository cocktailRepository;

  @override
  Stream<CocktailsState> mapEventToState(CocktailsEvent event) async* {
    if (event is CocktailsFetched) {
      yield* _fetchCocktails(event.category);
    }
  }

  Stream<CocktailsState> _fetchCocktails(CocktailCategory category) async* {
    assert(category != null);
    try {
      yield CocktailsLoadInProgress();
      final cocktails =
          await cocktailRepository.fetchCocktailsByCocktailCategory(category);
      yield CocktailsLoadSuccess(cocktails: UnmodifiableListView(cocktails));
    } catch (e) {
      print(e);
      yield CocktailsLoadFailure(e.toString());
    }
  }
}
