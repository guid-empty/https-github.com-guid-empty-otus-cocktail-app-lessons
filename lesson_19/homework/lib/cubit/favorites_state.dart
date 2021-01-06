import 'dart:collection';

import 'package:cocktail_app/core/models.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

@immutable
abstract class FavoritesState {}

class IsFavoriteCheck extends FavoritesState {
  final CocktailDefinition cocktailDefinition;

  IsFavoriteCheck(this.cocktailDefinition);
  bool isFavorites(int id) {
    if (cocktailDefinition.isFavourite)
      return true;
    else
      return false;
  }
}

class CocktailsInitial extends FavoritesState {}

class CocktailsLoadSuccess extends FavoritesState {
  CocktailsLoadSuccess({this.cocktails});
  Iterable<CocktailDefinition> cocktails;

  //final UnmodifiableListView<CocktailDefinition> cocktails;
}

class CocktailsLoadInProgress extends FavoritesState {}

class CocktailsLoadFailure extends FavoritesState {
  CocktailsLoadFailure(this.errorMessage);

  final String errorMessage;
}
