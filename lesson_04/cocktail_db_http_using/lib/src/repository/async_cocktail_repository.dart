import 'dart:convert' as convert;
import 'dart:io';

import 'package:cocktaildbhttpusing/models.dart';
import 'package:cocktaildbhttpusing/src/dto/cocktail_definition_dto.dart';
import 'package:cocktaildbhttpusing/src/dto/cocktail_dto.dart';
import 'package:cocktaildbhttpusing/src/homework_04_built_value/ingredient_with_built_value.dart';
import 'package:cocktaildbhttpusing/src/homework_04_built_value/serializers.dart';
import 'package:cocktaildbhttpusing/src/model/cocktail.dart';
import 'package:cocktaildbhttpusing/src/model/cocktail_category.dart';
import 'package:cocktaildbhttpusing/src/model/cocktail_definition.dart';
import 'package:cocktaildbhttpusing/src/model/cocktail_type.dart';
import 'package:cocktaildbhttpusing/src/model/glass_type.dart';
import 'package:cocktaildbhttpusing/src/model/ingredient_definition.dart';
import 'package:http/http.dart' as http;

import '../../models.dart';
import '../dto/looked_up_ingredient_dto.dart';

class AsyncCocktailRepository {
  static const String _apiKey =
      'e5b7f97a78msh3b1ba27c40d8ccdp105034jsn34e2da32d50b';

  static const Map<String, String> _headers = const {
    'x-rapidapi-key': _apiKey,
  };

  Future<Cocktail> fetchCocktailDetails(String id) async {
    Cocktail result;

    var client = http.Client();
    try {
      final url = 'https://the-cocktail-db.p.rapidapi.com/lookup.php?i=$id';
      var response = await client.get(url, headers: _headers);
      if (response.statusCode == 200) {
        final jsonResponse = convert.jsonDecode(response.body);
        var drinks = jsonResponse['drinks'] as Iterable<dynamic>;

        final dtos = drinks
            .cast<Map<String, dynamic>>()
            .map((json) => CocktailDto.fromJson(json));
        if (dtos.length > 0) {
          result = _createCocktailFromDto(dtos.first);
        }
      } else {
        throw HttpException(
            'Request failed with status: ${response.statusCode}');
      }
    } finally {
      client.close();
    }

    return result;
  }

  Future<Iterable<CocktailDefinition>> fetchCocktailsByCocktailType(
      CocktailType cocktailType) async {
    var result = <CocktailDefinition>[];

    var client = http.Client();
    try {
      final url =
          'https://the-cocktail-db.p.rapidapi.com/filter.php?a=${cocktailType.value}';
      var response = await client.get(
        url,
        headers: {
          'x-rapidapi-key':
              'e5b7f97a78msh3b1ba27c40d8ccdp105034jsn34e2da32d50b',
        },
      );
      if (response.statusCode == 200) {
        final jsonResponse = convert.jsonDecode(response.body);
        var drinks = jsonResponse['drinks'] as Iterable<dynamic>;

        final dtos = drinks
            .cast<Map<String, dynamic>>()
            .map((json) => CocktailDefinitionDto.fromJson(json));

        for (final dto in dtos) {
          result.add(CocktailDefinition(
            id: dto.idDrink,
            isFavourite: true,
            name: dto.strDrink,
            drinkThumbUrl: dto.strDrinkThumb,
          ));
        }
      } else {
        throw HttpException(
            'Request failed with status: ${response.statusCode}');
      }
    } finally {
      client.close();
    }

    return result;
  }

  Future<Iterable<Cocktail>> fetchPopularCocktails() async {
    var result = <Cocktail>[];

    var client = http.Client();
    try {
      const url = 'https://the-cocktail-db.p.rapidapi.com/popular.php';
      var response = await client.get(
        url,
        headers: {
          'x-rapidapi-key':
              'e5b7f97a78msh3b1ba27c40d8ccdp105034jsn34e2da32d50b',
        },
      );
      if (response.statusCode == 200) {
        final jsonResponse = convert.jsonDecode(response.body);
        var drinks = jsonResponse['drinks'] as Iterable<dynamic>;

        final dtos = drinks
            .cast<Map<String, dynamic>>()
            .map((json) => CocktailDto.fromJson(json));

        for (final dto in dtos) {
          final cocktail = _createCocktailFromDto(dto);
          result.add(cocktail);
        }
      } else {
        throw HttpException(
            'Request failed with status: ${response.statusCode}');
      }
    } finally {
      client.close();
    }

    return result;
  }

  Future<Cocktail> getRandomCocktail() async {
    Cocktail result;

    var client = http.Client();
    try {
      const url = 'https://the-cocktail-db.p.rapidapi.com/random.php';
      var response = await client.get(url, headers: _headers);
      if (response.statusCode == 200) {
        final jsonResponse = convert.jsonDecode(response.body);
        var drinks = jsonResponse['drinks'] as Iterable<dynamic>;

        final dtos = drinks
            .cast<Map<String, dynamic>>()
            .map((json) => CocktailDto.fromJson(json));
        if (dtos.length > 0) {
          result = _createCocktailFromDto(dtos.first);
        }
      } else {
        throw HttpException(
            'Request failed with status: ${response.statusCode}');
      }
    } finally {
      client.close();
    }

    return result;
  }

  ///
  /// TODO: implement Lookup ingredient by ID operation to get all details about Ingredient
  /// using an endpoint https://rapidapi.com/thecocktaildb/api/the-cocktail-db?endpoint=apiendpoint_0ee9572a-a259-4b6e-9e53-b97aa3d42b18
  ///
  Future<Ingredient> lookupIngredientById(String id) async {
    Ingredient result;
    var client = http.Client();
    try {
      final url = 'https://the-cocktail-db.p.rapidapi.com/lookup.php?iid=$id';
      var response = await client.get(url, headers: _headers);
      if (response.statusCode == 200) {
        final jsonResponse = convert.jsonDecode(response.body);
        var lookedUpIngredients =
            jsonResponse['ingredients'] as Iterable<dynamic>;

        final dtos = lookedUpIngredients
            .map((json) => LookedUpIngredientDto.fromJson(json));

        if(lookedUpIngredients == null || lookedUpIngredients.isEmpty) {
          throw HttpException(
              'Request failed with status: ${response.statusCode}');
        }

        if (dtos.length > 0) {
          result = _createLookedUpIngredientsFromDto(dtos.first);
        }
      } else {
        throw HttpException(
            'Request failed with status: ${response.statusCode}');
      }
    } finally {
      client.close();
    }

    return result;
  }

  Future<Ingredient> lookupIngredientByIdWithBuiltValue(String id) async {
    Ingredient result;
    var client = http.Client();
    try {
      final url = 'https://the-cocktail-db.p.rapidapi.com/lookup.php?iid=$id';
      var response = await client.get(url, headers: _headers);
      if (response.statusCode == 200) {
        final jsonResponse = convert.jsonDecode(response.body);
        var lookedUpIngredients =
        jsonResponse['ingredients'] as Iterable<dynamic>;

        final dtos = lookedUpIngredients
            .map((json) => serializers.deserializeWith(IngredientWithBuiltValue.serializer, json));
        if (dtos.length > 0) {
          result = _createLookedUpIngredientsFromDtoWithBuiltValue(dtos.first);
        }
      } else {
        throw HttpException(
            'Request failed with status: ${response.statusCode}');
      }
    } finally {
      client.close();
    }

    return result;
  }

  Cocktail _createCocktailFromDto(CocktailDto dto) {
    final glass = GlassType.parse(dto.strGlass);
    final cocktailType = CocktailType.parse(dto.strAlcoholic);
    final category = CocktailCategory.parse(dto.strCategory);

    var ingredients = <IngredientDefinition>[];

    _getIngredients(dto).forEach(
        (key, value) => ingredients.add(IngredientDefinition(key, value)));

    return Cocktail(
      id: dto.idDrink,
      category: category,
      cocktailType: cocktailType,
      glassType: glass,
      instruction: dto.strInstructions,
      isFavourite: true,
      name: dto.strDrink,
      ingredients: ingredients,
      drinkThumbUrl: dto.strDrinkThumb,
    );
  }

  Map<String, String> _getIngredients(CocktailDto dto) {
    return <String, String>{
      if (dto.strIngredient1 != null) dto.strIngredient1: dto.strMeasure1,
      if (dto.strIngredient2 != null) dto.strIngredient2: dto.strMeasure2,
      if (dto.strIngredient3 != null) dto.strIngredient3: dto.strMeasure3,
      if (dto.strIngredient4 != null) dto.strIngredient4: dto.strMeasure4,
      if (dto.strIngredient5 != null) dto.strIngredient5: dto.strMeasure5,
      if (dto.strIngredient6 != null) dto.strIngredient6: dto.strMeasure6,
      if (dto.strIngredient7 != null) dto.strIngredient7: dto.strMeasure7,
      if (dto.strIngredient8 != null) dto.strIngredient8: dto.strMeasure8,
      if (dto.strIngredient9 != null) dto.strIngredient9: dto.strMeasure9,
      if (dto.strIngredient10 != null) dto.strIngredient10: dto.strMeasure10,
      if (dto.strIngredient11 != null) dto.strIngredient11: dto.strMeasure11,
      if (dto.strIngredient12 != null) dto.strIngredient12: dto.strMeasure12,
      if (dto.strIngredient13 != null) dto.strIngredient13: dto.strMeasure13,
      if (dto.strIngredient14 != null) dto.strIngredient14: dto.strMeasure14,
      if (dto.strIngredient15 != null) dto.strIngredient15: dto.strMeasure15,
    };
  }

  Ingredient _createLookedUpIngredientsFromDto(LookedUpIngredientDto first) {
    return Ingredient(
        id: first.id,
        name: first.name,
        description: first.description,
        ingredientType: first.lookedUpIngredientType,
        isAlcoholic: _isAlcoholic(first.isAlcohol));
  }

  Ingredient _createLookedUpIngredientsFromDtoWithBuiltValue(IngredientWithBuiltValue first) {
    return Ingredient(
        id: first.idIngredient,
        name: first.strIngredient,
        description: first.strDescription,
        ingredientType: first.strType,
        isAlcoholic: _isAlcoholic(first.strAlcohol));
  }

  bool _isAlcoholic(String isAlcohol) {
    if(isAlcohol == null || isAlcohol.isEmpty) return false;
    if(isAlcohol.toLowerCase() == "no") return false;
    else return true;
  }
}
