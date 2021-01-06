import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/redux/favorites/state.dart';
import 'package:cocktail_app/redux/state.dart';
import 'package:cocktail_app/ui/style/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:share/share.dart';

class CocktailPreview extends StatelessWidget {
  final Cocktail cocktail;

  CocktailPreview({this.cocktail});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 375 / 343,
          child: Image.network(cocktail.drinkThumbUrl, fit: BoxFit.fill),
        ),
        Positioned(
          bottom: 0,
          child: AspectRatio(
            aspectRatio: 375 / 172,
            child: Container(
              color: Colors.transparent,
              foregroundDecoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                CustomColors.gradient_first,
                CustomColors.gradient_second
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                StoreConnector<AppState, FavoritesState>(
                    converter: (store) => store.state.favoriteState,
                    builder: (context, state) {
                      return IconButton(
                        onPressed: () {
                          var shareText = '${cocktail.drinkThumbUrl}\n\n';
                          var subject = 'Cocktail name: ${cocktail.name}\n'
                              'My favorite: ${state.isFavorites(cocktail.id)}\n'
                              'Cocktail category: ${cocktail.category.value}\n'
                              'Cocktail type: ${cocktail.cocktailType.value}\n'
                              'Glass type: ${cocktail.glassType.value}\n\n'
                              '${_getIngredientsText()}'
                              'Instruction: ${cocktail.instruction}';

                          Share.share(shareText + subject);
                        },
                        icon: Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                      );
                    })
              ],
            ),
          ),
        )
      ],
    );
  }

  String _getIngredientsText() {
    var result = '';

    cocktail.ingredients.forEach((ingredient) {
      result =
          result + '${ingredient.ingredientName} : ${ingredient.measure}\n';
    });

    if (result.isNotEmpty) result = 'Ingredients:\n' + result + '\n';
    return result;
  }
}
