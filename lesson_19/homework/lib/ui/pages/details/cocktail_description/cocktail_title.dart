import 'package:cocktail_app/ui/stores/favourite_cocktail/favourite_cocktail_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class CocktailTitle extends StatelessWidget {
  final String cocktailTitle;

  CocktailTitle({this.cocktailTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          cocktailTitle ?? '',
          style: Theme.of(context).textTheme.headline3,
        ),
        _getIsFavoriteIcon()
      ],
    );
  }

  Widget _getIsFavoriteIcon() {
    return Observer(builder: (context) {
      final store = context.watch<FavouriteCocktailStore>();
      return IconButton(
        icon: store.isFavourite
            ? Icon(Icons.favorite, color: Colors.white)
            : Icon(Icons.favorite_border, color: Colors.white),
        onPressed: () {
          store.switchFavourite();
        },
      );
    });
  }
}
