import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/models.dart';
import '../services/colors.dart';
import '../widgets/cocktail_info.dart';
import '../widgets/ingredient_info.dart';
import '../widgets/rating.dart';

class CocktailDetailPage extends StatelessWidget {
  const CocktailDetailPage(
    this.cocktail, {
    Key key,
  }) : super(key: key);

  final Cocktail cocktail;

  // разделяет инструкции по приготовлению на лист пунктов для лучшего вида
  List<String> getInstructions(String instructions) {
    List<String> ans;
    ans = instructions.split('- ');
    ans.removeWhere((value) => value == '  ');
    return ans.sublist(1);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: screenWidth,
                  height: screenWidth * .85,
                  color: kCocktailBackground,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    fit: StackFit.expand,
                    children: [
                      Positioned(
                        // картинка коктейля выходит за верхнюю рамку
                        bottom: 0,
                        width: screenWidth,
                        child: Image.network(
                          cocktail.drinkThumbUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                kCocktailBackground.withOpacity(0.05),
                                Colors.white.withOpacity(0.07),
                              ]),
                        ),
                      ),
                      Positioned(
                        top: 26,
                        left: 28,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: kHeaderColor,
                            size: 28,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 26,
                        right: 28,
                        child: Icon(
                          Icons.open_in_new,
                          color: kHeaderColor,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: kDescriptionBackground,
                  padding: EdgeInsets.fromLTRB(33, 33, 33, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            cocktail.name,
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                          Icon(
                            cocktail.isFavourite
                                ? Icons.favorite
                                : Icons.favorite_border,
                          ),
                        ],
                      ),
                      Container(
                        height: 10,
                      ),
                      Text(
                        'id:${cocktail.id}',
                        style: TextStyle(
                          fontSize: 16,
                          color: kSubheaderColor,
                        ),
                      ),
                      Container(
                        height: 20,
                      ),
                      CocktailInfo(
                          'Категория коктейля', cocktail.category.value),
                      CocktailInfo('Тип коктейля', cocktail.cocktailType.value),
                      CocktailInfo('Тип стекла', cocktail.glassType.value),
                    ],
                  ),
                ),
                Container(
                  color: kIngredientsBackground,
                  padding: EdgeInsets.fromLTRB(33, 24, 33, 0),
                  child: Container(
                    child: Text(
                      'Ингредиенты',
                      style: TextStyle(
                        color: kSubheaderColor,
                        fontSize: 19,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Container(
                  color: kIngredientsBackground,
                  padding: EdgeInsets.fromLTRB(33, 24, 33, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      for (var ingredient in cocktail.ingredients.toList())
                        IngredientInfo(
                            ingredient.ingredientName, ingredient.measure),
                    ],
                  ),
                ),
                Container(
                  color: kInstructionBackground,
                  padding: EdgeInsets.fromLTRB(33, 24, 33, 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Инструкция для приготовления',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      Container(
                        height: 24,
                      ),
                      for (String instructionItem
                          in getInstructions(cocktail.instruction))
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("\u2022 "),
                            Flexible(
                              child: Text(
                                instructionItem,
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
                // передаем количество звезд
                Rating(3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
