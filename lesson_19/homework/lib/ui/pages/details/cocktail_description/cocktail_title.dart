import 'package:cocktail_app/core/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:cocktail_app/stores/cocktail_store.dart';

/// TODO:
/// https://www.figma.com/file/UKHKopXpDy02I232c9mdwZ/%D0%9A%D0%BE%D0%BA%D1%82%D0%B5%D0%B9%D0%BB%D0%B8?node-id=24%3A441
///
/// В этом экране используется точно такая же  верстка, как и на экране фильтрации (то есть можно переиспользовать экран выдачи результатов по категориям)
///
class CocktailTitle extends StatefulWidget {
  Cocktail cocktail;

  CocktailTitle({this.cocktail});

  @override
  _CocktailTitleState createState() => _CocktailTitleState();
}

class _CocktailTitleState extends State<CocktailTitle> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.cocktail.name ?? '',
            style: Theme.of(context).textTheme.headline3,
          ),
          _getIsFavoriteIcon(context)
        ],
      );
    });
  }

  Widget _getIsFavoriteIcon(context) {
    //обращение к стору, созданному на уровне приложения
    final store = Provider.of<CocktailStore>(context);
    if (store.favoriteCocktails
        .where((element) => element.id == widget.cocktail.id)
        .isNotEmpty) {
      return IconButton(
        icon: Icon(Icons.favorite, color: Colors.white),
        onPressed: () {
          //удаление из избранного
          store.removeFromFavoritiesById(widget.cocktail.id);
          widget.cocktail.setUnfav();
          setState(() {});
        },
      );
    } else {
      return IconButton(
        icon: Icon(Icons.favorite_border, color: Colors.white),
        onPressed: () {
          //добавление в избранное
          store.addToFavoritiesByCocktail(widget.cocktail);
          widget.cocktail.setFav();
          setState(() {});
        },
      );
    }
  }
}
