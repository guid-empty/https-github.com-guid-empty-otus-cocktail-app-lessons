import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:lesson_17/app/core/models.dart';

@immutable
class CocktailsState {}

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


