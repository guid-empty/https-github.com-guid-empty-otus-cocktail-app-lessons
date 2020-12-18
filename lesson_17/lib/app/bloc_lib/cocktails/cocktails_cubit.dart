import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_17/app/bloc_lib/cocktails/cocktails_events.dart';
import 'package:lesson_17/app/bloc_lib/cocktails/cocktails_states.dart';
import 'package:lesson_17/app/core/models.dart';
import 'package:lesson_17/app/repository/cocktail_repository.dart';

class CocktailsCubit extends Cubit<CocktailsState> {
  CocktailsCubit(this.cocktailRepository) : super(CocktailsInitial());

  final CocktailRepository cocktailRepository;

  Future<void> fetchCocktails(CocktailCategory category) async {
    emit(CocktailsLoadInProgress());
    try {
      final cocktails =
          await cocktailRepository.fetchCocktailsByCocktailCategory(category);
      emit(CocktailsLoadSuccess(cocktails: cocktails));
    } catch (e) {
      print(e);
      emit(CocktailsLoadFailure(e.toString()));
    }
  }
}
