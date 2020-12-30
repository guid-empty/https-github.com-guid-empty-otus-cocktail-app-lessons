import 'dart:io';

import 'package:cocktail_app/core/src/model/cocktail.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';

void shareCocktail(Cocktail cocktail) async {
  final http.Response downloadedImage = await http.get(cocktail.drinkThumbUrl);
  final Directory tempDir = await getTemporaryDirectory();
  final String imagePath = join(tempDir.path, 'cocktail_${cocktail.id}.${extension(cocktail.drinkThumbUrl)}');

  final File file = File(imagePath);

  await file.writeAsBytes(downloadedImage.bodyBytes);

  final subject = 'Интересный коктейль ${cocktail.name}';
  final String ingredients =
      cocktail.ingredients.map((i) => '${i.ingredientName ?? ''}: ${i.measure ?? ''}').join('\n');
  final text = '''Посмотрите какой коктейль - ${cocktail.name} [${cocktail.id}]
                    
Мой любимый: ${cocktail.isFavourite ? 'Да' : 'Нет'}
Категория коктейля: ${cocktail.category.value}
Тип коктейля: ${cocktail.cocktailType.value}
Тип стекла: ${cocktail.glassType.value}

Ингредиенты:
$ingredients

Инструкция для приготовления:
${cocktail.instruction}
''';
  await Share.shareFiles([imagePath], text: text, subject: subject);
}
