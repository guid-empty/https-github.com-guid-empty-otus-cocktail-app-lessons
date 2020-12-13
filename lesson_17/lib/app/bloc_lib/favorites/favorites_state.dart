part of 'favorites_cubit.dart';

@immutable
class FavoritesState {
  FavoritesState(this.favoritesMap);

  final BuiltMap<String, CocktailDefinition> favoritesMap;

  bool isFavorites(String id) {
    return favoritesMap?.containsKey(id) == true;
  }

  factory FavoritesState.fromMap(Map<String, dynamic> map) {
    return FavoritesState(
      BuiltMap<String, CocktailDefinition>.from(
        ((map['favoritesMap'] as Map) ?? {}).map(
          (key, value) => MapEntry(
            key,
            CocktailDefinition.fromJson(value),
          ),
        ),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'favoritesMap': this.favoritesMap?.toMap(),
    };
  }
}
