import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/ui/style/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class CocktailPreview extends StatelessWidget {
  final String imageUrl;
  final Cocktail cocktail;

  CocktailPreview({this.imageUrl, this.cocktail});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 375 / 343,
          child: Image.network(imageUrl, fit: BoxFit.fill),
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
                IconButton(
                  onPressed: () {
                    _onShare(context);
                  },
                  icon: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  _onShare(BuildContext context) async {
    var shareText = '${cocktail.drinkThumbUrl}\n\n';
    var subject = 'Cocktail name: ${cocktail.name}\n'
        'My favorite: ${cocktail.isFavourite ? 'Yes' : 'No'}\n'
        'Cocktail category: ${cocktail.category.value}\n'
        'Cocktail type: ${cocktail.cocktailType.value}\n'
        'Glass type: ${cocktail.glassType.value}\n\n'
        'Ingridients: ${_getIngridients()}\n'
        'Instruction: ${cocktail.instruction}';
    await Share.share(shareText + subject);
  }

  String _getIngridients() {
    var name = cocktail.ingredients.toList();
    String result = '';
    for (var n in name) {
      result = '$result ${n.ingredientName} : ${n.measure}\n';
    }
    print(result);
    return result;
  }
}
