import 'dart:collection';

import 'package:cocktail_app/core/models.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class CocktailsState {}

class CocktailsInitial extends CocktailsState {}

class CocktailsLoadSuccess extends CocktailsState {
  CocktailsLoadSuccess({this.cocktails});

  final UnmodifiableListView<CocktailDefinition> cocktails;
}

class CocktailsLoadInProgress extends CocktailsState {}

class CocktailsLoadFailure extends CocktailsState {
  CocktailsLoadFailure(this.errorMessage);

  final String errorMessage;
}
