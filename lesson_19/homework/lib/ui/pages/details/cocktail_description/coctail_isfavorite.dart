import 'package:cocktail_app/core/src/model/cocktail_definition.dart';
import 'package:cocktail_app/cubit/favorites_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IsFavorite extends StatefulWidget {
  const IsFavorite({
    this.cocktailDefinition,
    Key key,
  }) : super(key: key);

  final CocktailDefinition cocktailDefinition;

  @override
  _IsFavoriteState createState() => _IsFavoriteState();
}

class _IsFavoriteState extends State<IsFavorite> {
  @override
  Widget build(BuildContext context) {
    final _cubit = BlocProvider.of<FavoritesCubit>(context);

    if (widget.cocktailDefinition.isFavourite) {
      return IconButton(
          onPressed: () {
            _cubit.removeFromFavoritesCocktails(widget.cocktailDefinition);
            setState(() {});
          },
          icon: Icon(Icons.favorite, color: Colors.red));
    }
    return IconButton(
        onPressed: () async {
          _cubit.addToFavoritesCocktails(widget.cocktailDefinition);
          setState(() {});
        },
        icon: Icon(Icons.favorite_border));
  }
}
