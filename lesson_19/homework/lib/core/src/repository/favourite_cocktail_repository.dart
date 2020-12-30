import 'package:cocktail_app/core/src/model/cocktail_definition.dart';

class FavouriteCocktailRepository {
  Future<Iterable<CocktailDefinition>> fetchFavouritesCocktails() async {
    var result = <CocktailDefinition>[];

    return result;
  }
}

// final url =
//     'https://the-cocktail-db.p.rapidapi.com/filter.php?c=${category.value}';
// var response = await http.get(
//   url,
//   headers: {
//     'x-rapidapi-key': 'e5b7f97a78msh3b1ba27c40d8ccdp105034jsn34e2da32d50b',
//   },
// );
// if (response.statusCode == 200) {
//   final jsonResponse = convert.jsonDecode(response.body);
//   var drinks = jsonResponse['drinks'] as Iterable<dynamic>;

//   final dtos = drinks
//       .cast<Map<String, dynamic>>()
//       .map((json) => CocktailDefinitionDto.fromJson(json));

//   for (final dto in dtos) {
//     result.add(CocktailDefinition(
//       id: dto.idDrink,
//       isFavourite: false,
//       /*  TODO: is Favorite field fetching  */
//       name: dto.strDrink,
//       drinkThumbUrl: dto.strDrinkThumb,
//     ));
//   }
// } else {
//   throw HttpException('Request failed with status: ${response.statusCode}');
// }
