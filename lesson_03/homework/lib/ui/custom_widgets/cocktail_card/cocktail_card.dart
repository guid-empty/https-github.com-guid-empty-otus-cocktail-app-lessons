import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/core/models.dart';
import 'package:homework/core/src/dto/cocktail_dto.dart';
import 'package:homework/ui/colors/custom_colors.dart';
import 'package:homework/ui/custom_widgets/cocktail_detail_page.dart';

class CocktailCard extends StatelessWidget {
  final CocktailDto cocktail;

  CocktailCard({this.cocktail});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        var mapCocktail = Cocktail(
          id: cocktail.idDrink, name: cocktail.strDrink, instruction: cocktail.strInstructions,
          category: CocktailCategory.beer, glassType: GlassType.balloonGlass,
          cocktailType: CocktailType.alcoholic, ingredients: Iterable.empty(),
          drinkThumbUrl: cocktail.strDrinkThumb, isFavourite: false
        );
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CocktailDetailPage(mapCocktail)),
        );
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: AspectRatio(
              aspectRatio: 170 / 215,
              child: Image.network(cocktail.strDrinkThumb, fit: BoxFit.fitHeight),
            ),
          ),
          Positioned(
            bottom: 16.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    width: 160,
                    child: Text(cocktail.strDrink,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: Theme.of(context).textTheme.headline1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: CustomColors.black,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, top: 6.0, bottom: 6.0),
                      child: Text(
                        'id: ${cocktail.idDrink}',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}