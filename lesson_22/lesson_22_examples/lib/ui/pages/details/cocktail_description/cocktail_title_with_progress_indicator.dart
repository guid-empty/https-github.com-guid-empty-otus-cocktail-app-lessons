import 'package:cocktail_app/ui/application_semantics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CocktailTitle extends StatefulWidget {
  final String cocktailTitle;
  final bool isFavorite;

  CocktailTitle({this.cocktailTitle, this.isFavorite});

  @override
  _CocktailTitleState createState() => _CocktailTitleState();
}

class _CocktailTitleState extends State<CocktailTitle> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (_controller.isCompleted)
            Text(
              widget.cocktailTitle ?? '',
              semanticsLabel: ApplicationSemantics.cocktailTitleLabel,
              style: Theme.of(context).textTheme.headline3,
            ),
          _getIsFavoriteIcon(),
          CircularProgressIndicator(value: _controller.value),
        ],
      );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(milliseconds: 1000), vsync: this);
    _controller.addStatusListener((status) => setState(() {}));
    _controller.forward();
  }

  Widget _getIsFavoriteIcon() => Semantics(
      label: 'Favorite Icon button',
      hint: 'Press to favorite',
      value: '${widget.isFavorite}',
      // onTap: () { setState(() { _counter++; }); }
      child: widget.isFavorite
          ? IconButton(
              icon: Icon(Icons.favorite, color: Colors.white),
              onPressed: () {},
            )
          : IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.white),
              onPressed: () {},
            ));
}
