import 'dart:convert' as convert;
import 'dart:io';

import 'package:cocktaildbhttpusing/models.dart';
import 'package:cocktaildbhttpusing/src/dto/cocktail_definition_dto.dart';
import 'package:cocktaildbhttpusing/src/dto/cocktail_dto.dart';
import 'package:cocktaildbhttpusing/src/dto/ingredient_dto.dart';
import 'package:cocktaildbhttpusing/src/model/cocktail.dart';
import 'package:cocktaildbhttpusing/src/model/cocktail_definition.dart';
import 'package:cocktaildbhttpusing/src/model/cocktail_type.dart';
import 'package:sprintf/sprintf.dart';
import 'package:http/http.dart' as http;

class AsyncCocktailRepository {
  static const String _apiKey = 'e5b7f97a78msh3b1ba27c40d8ccdp105034jsn34e2da32d50b';
  static const String _ingredientLookUpUrl = 'https://the-cocktail-db.p.rapidapi.com/lookup.php?iid=%s';
  static const String _cocktailDetailsLookUpUrl = 'https://the-cocktail-db.p.rapidapi.com/lookup.php?i=%s';
  static const String _filterCocktailByTypeUrl = 'https://the-cocktail-db.p.rapidapi.com/filter.php?a=%s';
  static const String _popularCocktailsUrl = 'https://the-cocktail-db.p.rapidapi.com/popular.php';
  static const String _randomCocktailUrl = 'https://the-cocktail-db.p.rapidapi.com/random.php';

  static const Map<String, String> _headers = const {
    'x-rapidapi-key': _apiKey,
  };

  final _client = http.Client();

  void close() {
    _client.close();
  }

  Future<Cocktail> fetchCocktailDetails(String id) async {
    final url = sprintf(_cocktailDetailsLookUpUrl, [id]);
    var response = await _client.get(url, headers: _headers);
    if (response.statusCode != 200) {
      throw HttpException('Request failed with status: ${response.statusCode}');
    }

    final jsonResponse = convert.jsonDecode(response.body);
    var drinks = jsonResponse['drinks'] as Iterable<dynamic>;

    final dtos = drinks.cast<Map<String, dynamic>>().map((json) => CocktailDto.fromJson(json));
    if (dtos.length == 0) {
      throw Exception('Drinks are empty: $jsonResponse');
    }

    return Cocktail.fromDto(dtos.first);
  }

  Future<Iterable<CocktailDefinition>> fetchCocktailsByCocktailType(CocktailType cocktailType) async {
    var result = <CocktailDefinition>[];

    final url = sprintf(_filterCocktailByTypeUrl, [cocktailType.value]);
    var response = await _client.get(url, headers: _headers);
    if (response.statusCode != 200) {
      throw HttpException('Request failed with status: ${response.statusCode}');
    }

    final jsonResponse = convert.jsonDecode(response.body);
    var drinks = jsonResponse['drinks'] as Iterable<dynamic>;

    final dtos = drinks.cast<Map<String, dynamic>>().map((json) => CocktailDefinitionDto.fromJson(json));

    for (final dto in dtos) {
      result.add(CocktailDefinition(
        id: dto.idDrink,
        isFavourite: true,
        name: dto.strDrink,
        drinkThumbUrl: dto.strDrinkThumb,
      ));
    }

    return result;
  }

  Future<Iterable<Cocktail>> fetchPopularCocktails() async {
    var result = <Cocktail>[];

    var response = await _client.get(_popularCocktailsUrl, headers: _headers);
    if (response.statusCode != 200) {
      throw HttpException('Request failed with status: ${response.statusCode}');
    }

    final jsonResponse = convert.jsonDecode(response.body);
    var drinks = jsonResponse['drinks'] as Iterable<dynamic>;

    final dtos = drinks.cast<Map<String, dynamic>>().map((json) => CocktailDto.fromJson(json));

    for (final dto in dtos) {
      final cocktail = Cocktail.fromDto(dto);
      result.add(cocktail);
    }

    return result;
  }

  Future<Cocktail> getRandomCocktail() async {
    var response = await _client.get(_randomCocktailUrl, headers: _headers);
    if (response.statusCode != 200) {
      throw HttpException('Request failed with status: ${response.statusCode}');
    }
    final jsonResponse = convert.jsonDecode(response.body);
    var drinks = jsonResponse['drinks'] as Iterable<dynamic>;

    final dtos = drinks.cast<Map<String, dynamic>>().map((json) => CocktailDto.fromJson(json));
    if (dtos.length == 0) {
      throw Exception('Drinks are empty: $jsonResponse');
    }

    return Cocktail.fromDto(dtos.first);
  }

  Future<Ingredient> lookupIngredientById(String id) async {
    final url = sprintf(_ingredientLookUpUrl, [id]);
    var response = await _client.get(url, headers: _headers);
    if (response.statusCode != 200) {
      throw HttpException('Request failed with status: ${response.statusCode}');
    }

    final jsonResponse = convert.jsonDecode(response.body);
    var drinks = jsonResponse['ingredients'] as Iterable<dynamic>;

    final dtos = drinks.cast<Map<String, dynamic>>().map((json) => IngredientDto.fromJson(json));
    if (dtos.length == 0) {
      throw Exception('Ingredients are empty: $jsonResponse');
    }

    return Ingredient.fromDto(dtos.first);
  }
}
