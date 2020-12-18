import 'package:flutter/foundation.dart';
import 'package:lesson_17/app/core/models.dart';

@immutable
class CocktailsEvent {}

class CocktailsFetched extends CocktailsEvent {
  CocktailsFetched(this.category);

  final CocktailCategory category;

}
