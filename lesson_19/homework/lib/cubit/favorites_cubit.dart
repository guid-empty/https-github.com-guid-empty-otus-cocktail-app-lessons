import 'package:cocktail_app/core/src/model/cocktail_definition.dart';
import 'package:cocktail_app/core/src/repository/favourite_cocktail_repository.dart';
import 'package:cocktail_app/cubit/favorites_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit(this.cocktailRepository) : super(CocktailsInitial());

  final FavouriteCocktailRepository cocktailRepository;

  Future<void> fetchFavouritesCocktails() async {
    cocktailRepository.setUp();
    //emit(CocktailsLoadInProgress());
    try {
      final cocktails = await cocktailRepository.getAll();
      emit(CocktailsLoadSuccess(cocktails: cocktails));
    } catch (e) {
      print(e);
      emit(CocktailsLoadFailure(e.toString()));
    }
  }

  Future<void> addToFavoritesCocktails(
      CocktailDefinition cocktailDefinition) async {
    emit(CocktailsLoadInProgress());
    try {
      cocktailRepository.add(cocktailDefinition.id, cocktailDefinition);
      final cocktails = await cocktailRepository.getAll();
      emit(CocktailsLoadSuccess(cocktails: cocktails));
    } catch (e) {
      print(e);
      emit(CocktailsLoadFailure(e.toString()));
    }
  }

  Future<void> removeFromFavoritesCocktails(
      CocktailDefinition cocktailDefinition) async {
    emit(CocktailsLoadInProgress());
    try {
      await cocktailRepository.remove(
          cocktailDefinition.id, cocktailDefinition);
      final cocktails = await cocktailRepository.getAll();
      emit(CocktailsLoadSuccess(cocktails: cocktails));
    } catch (e) {
      print(e);
      emit(CocktailsLoadFailure(e.toString()));
    }
  }

  isFavorite(CocktailDefinition cocktailDefinition) {
    emit(IsFavoriteCheck(cocktailDefinition));
  }
}
