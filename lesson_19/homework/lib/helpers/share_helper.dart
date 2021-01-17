import 'dart:io';

import 'package:cocktail_app/core/models.dart';
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';

String createShreTextFromCocktail(Cocktail cocktail) {
  return "Name : ${cocktail.name}\n"
      "Category: ${cocktail.category.name}\n"
      "Type: ${cocktail.cocktailType.name}\n"
      "GlassType: ${cocktail.glassType.name}\n\n"
      "Instructions: ${cocktail.instruction}";
}

Future<String> saveImageToFile(String imageUrl) async {
  final response = await get(imageUrl);
  final Directory temp = await getTemporaryDirectory();
  final File imageFile = File('${temp.path}/cocktailImage');
  imageFile.writeAsBytesSync(response.bodyBytes);

  return "${temp.path}/cocktailImage";
}