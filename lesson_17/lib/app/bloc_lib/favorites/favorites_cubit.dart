import 'package:built_collection/built_collection.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:lesson_17/app/core/models.dart';
import 'package:meta/meta.dart';

part 'favorites_state.dart';

class FavoritesCubit extends HydratedCubit<FavoritesState> {

  FavoritesCubit()
      : super(FavoritesState(BuiltMap<String, CocktailDefinition>()));

  void addToFavorites(CocktailDefinition cocktailDefinition) {
    emit(FavoritesState(state.favoritesMap.rebuild((s) {
      s[cocktailDefinition.id] = cocktailDefinition;
    })));
  }

  void removeFromFavorites(String id) {
    emit(FavoritesState(state.favoritesMap.rebuild((s) {
      s.remove(id);
    })));
  }

  @override
  FavoritesState fromJson(Map<String, dynamic> json) {
    if (json == null){
      return FavoritesState(BuiltMap<String, CocktailDefinition>());
    }
    return FavoritesState.fromMap(json);
  }

  @override
  Map<String, dynamic> toJson(FavoritesState state) {
    return state.toMap();
  }
}
