import 'dart:convert' as convert;
import 'dart:io';

import 'package:cocktail_app/src/core/src/dto/cocktail_definition_dto.dart';
import 'package:cocktail_app/src/core/src/dto/cocktail_dto.dart';
import 'package:cocktail_app/src/core/src/model/cocktail.dart';
import 'package:cocktail_app/src/core/src/model/cocktail_category.dart';
import 'package:cocktail_app/src/core/src/model/cocktail_definition.dart';
import 'package:cocktail_app/src/core/src/model/cocktail_type.dart';
import 'package:cocktail_app/src/core/src/model/glass_type.dart';
import 'package:cocktail_app/src/core/src/model/ingredient.dart';
import 'package:cocktail_app/src/core/src/model/ingredient_definition.dart';
import 'package:http/http.dart' as http;

class AsyncCocktailRepository {
  static const String _apiKey = 'e5b7f97a78msh3b1ba27c40d8ccdp105034jsn34e2da32d50b';

  static const Map<String, String> _headers = const {
    'x-rapidapi-key': _apiKey,
  };

  Future<Cocktail> fetchCocktailDetails(String id) async {
    Cocktail result;

    final url = 'https://the-cocktail-db.p.rapidapi.com/lookup.php?i=$id';
    var response = await http.get(url, headers: _headers);
    if (response.statusCode == 200) {
      final jsonResponse = convert.jsonDecode(response.body);
      var drinks = jsonResponse['drinks'] as Iterable<dynamic>;

      final dtos = drinks.cast<Map<String, dynamic>>().map((json) => CocktailDto.fromJson(json));
      if (dtos.length > 0) {
        result = _createCocktailFromDto(dtos.first);
      }
    } else {
      throw HttpException('Request failed with status: ${response.statusCode}');
    }

    return result;
  }

  Future<Iterable<CocktailDefinition>> fetchCocktailsByCocktailCategory(CocktailCategory category) async {
    var result = <CocktailDefinition>[];

    final url = 'https://the-cocktail-db.p.rapidapi.com/filter.php?c=${category.value}';
    var response = await http.get(
      url,
      headers: {
        'x-rapidapi-key': 'e5b7f97a78msh3b1ba27c40d8ccdp105034jsn34e2da32d50b',
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = convert.jsonDecode(response.body);
      var drinks = jsonResponse['drinks'] as Iterable<dynamic>;

      final dtos = drinks.cast<Map<String, dynamic>>().map((json) => CocktailDefinitionDto.fromJson(json));

      for (final dto in dtos) {
        result.add(CocktailDefinition(
          id: dto.idDrink,
          isFavourite: false,
          /*  TODO: is Favorite field fetching  */
          name: dto.strDrink,
          drinkThumbUrl: dto.strDrinkThumb,
        ));
      }
    } else {
      throw HttpException('Request failed with status: ${response.statusCode}');
    }

    return result;
  }

  Future<Iterable<CocktailDefinition>> fetchCocktailsByCocktailType(CocktailType cocktailType) async {
    var result = <CocktailDefinition>[];

    final url = 'https://the-cocktail-db.p.rapidapi.com/filter.php?a=${cocktailType.value}';
    var response = await http.get(
      url,
      headers: {
        'x-rapidapi-key': 'e5b7f97a78msh3b1ba27c40d8ccdp105034jsn34e2da32d50b',
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = convert.jsonDecode(response.body);
      var drinks = jsonResponse['drinks'] as Iterable<dynamic>;

      final dtos = drinks.cast<Map<String, dynamic>>().map((json) => CocktailDefinitionDto.fromJson(json));

      for (final dto in dtos) {
        result.add(CocktailDefinition(
          id: dto.idDrink,
          isFavourite: false,
          /*  TODO: is Favorite field fetching  */
          name: dto.strDrink,
          drinkThumbUrl: dto.strDrinkThumb,
        ));
      }
    } else {
      throw HttpException('Request failed with status: ${response.statusCode}');
    }

    return result;
  }

  Future<Iterable<Cocktail>> fetchPopularCocktails() async {
    var result = <Cocktail>[];

    const url = 'https://the-cocktail-db.p.rapidapi.com/popular.php';
    var response = await http.get(
      url,
      headers: {
        'x-rapidapi-key': 'e5b7f97a78msh3b1ba27c40d8ccdp105034jsn34e2da32d50b',
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = convert.jsonDecode(response.body);
      var drinks = jsonResponse['drinks'] as Iterable<dynamic>;

      final dtos = drinks.cast<Map<String, dynamic>>().map((json) => CocktailDto.fromJson(json));

      for (final dto in dtos) {
        final cocktail = _createCocktailFromDto(dto);
        result.add(cocktail);
      }
    } else {
      throw HttpException('Request failed with status: ${response.statusCode}');
    }

    return result;
  }

  Future<Cocktail> getRandomCocktail() async {
    Cocktail result;

    const url = 'https://the-cocktail-db.p.rapidapi.com/random.php';
    var response = await http.get(url, headers: _headers);
    if (response.statusCode == 200) {
      final jsonResponse = convert.jsonDecode(response.body);
      var drinks = jsonResponse['drinks'] as Iterable<dynamic>;

      final dtos = drinks.cast<Map<String, dynamic>>().map((json) => CocktailDto.fromJson(json));
      if (dtos.length > 0) {
        result = _createCocktailFromDto(dtos.first);
      }
    } else {
      throw HttpException('Request failed with status: ${response.statusCode}');
    }

    return result;
  }

  Future<Ingredient> lookupIngredientById() async {
    return null;
  }

  Cocktail _createCocktailFromDto(CocktailDto dto) {
    final glass = GlassType.parse(dto.strGlass);
    final cocktailType = CocktailType.parse(dto.strAlcoholic);
    final category = CocktailCategory.parse(dto.strCategory);

    var ingredients = <IngredientDefinition>[];

    _getIngredients(dto).forEach((key, value) => ingredients.add(IngredientDefinition(key, value)));

    return Cocktail(
      id: dto.idDrink,
      category: category,
      cocktailType: cocktailType,
      glassType: glass,
      instruction: dto.strInstructions,
      isFavourite: false,
      /*  TODO: is Favorite field fetching  */
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
}
