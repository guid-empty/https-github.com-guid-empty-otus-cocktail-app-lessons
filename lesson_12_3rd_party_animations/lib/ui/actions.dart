import 'package:lesson_12_3rd_party_animations/src/model/cocktail.dart';

abstract class Action<T> {
  T get data;
}

class CocktailDetailsAction extends Action<Cocktail> {
  final Cocktail _data;

  CocktailDetailsAction(this._data);

  @override
  Cocktail get data => _data;
}

class HttpRequestStartedAction extends Action<String> {
  final String _data;

  HttpRequestStartedAction(this._data);

  @override
  String get data => _data;
}
