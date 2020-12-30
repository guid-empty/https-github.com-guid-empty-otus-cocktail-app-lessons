import 'package:cocktail_app/core/src/repository/favourite_cocktail_repository.dart';
import 'package:cocktail_app/cubit/coctails_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CocktailsCubit extends Cubit<CocktailsState> {
  CocktailsCubit(this.cocktailRepository) : super(CocktailsInitial());

  final FavouriteCocktailRepository cocktailRepository;

  Future<void> fetchCocktails() async {
    emit(CocktailsLoadInProgress());
    try {
      final cocktails = await cocktailRepository.fetchFavouritesCocktails();
      emit(CocktailsLoadSuccess(cocktails: cocktails));
    } catch (e) {
      print(e);
      emit(CocktailsLoadFailure(e.toString()));
    }
  }
}
