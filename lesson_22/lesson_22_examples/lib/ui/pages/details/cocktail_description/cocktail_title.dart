import 'package:cocktail_app/ui/application_semantics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CocktailTitle extends StatefulWidget {
  final String cocktailTitle;
  final bool isFavorite;

  CocktailTitle({this.cocktailTitle, this.isFavorite});

  @override
  State createState() => _CocktailTitle();
}

class _CocktailTitle extends State<CocktailTitle> {
  var favorite = false;

  @override
  void initState() {
    setState(() {
      favorite = widget.isFavorite;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.cocktailTitle ?? '',
            semanticsLabel: ApplicationSemantics.cocktailTitleLabel,
            style: Theme.of(context).textTheme.headline3,
          ),
          _getIsFavoriteIcon()
        ],
      );

  Widget _getIsFavoriteIcon() => Semantics(
      label: 'Favorite Icon button',
      hint: 'Press to favorite',
      value: '$favorite',
      // onTap: () { setState(() { _counter++; }); }
      child: favorite
          ? IconButton(
              icon: Icon(Icons.favorite, color: Colors.white),
              onPressed: () {
                setState(() {
                  favorite = !favorite;
                });
              },
            )
          : IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.white),
              onPressed: () {
                setState(() {
                  favorite = !favorite;
                });
              },
            ));
}
