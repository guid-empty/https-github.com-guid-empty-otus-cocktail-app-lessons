import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/main.dart';
import 'package:cocktail_app/ui/pages/details/cocktail_detail_page.dart';
import 'package:flutter/material.dart';

class CocktailDetailsLoaderPageWidget extends StatefulWidget {
  final String cocktailId;
  final CocktailDefinition cocktailDefinition;

  const CocktailDetailsLoaderPageWidget(
      {Key key, @required this.cocktailId, this.cocktailDefinition})
      : super(key: key);

  @override
  _CocktailDetailsLoaderPageWidgetState createState() =>
      _CocktailDetailsLoaderPageWidgetState(cocktailDefinition);
}

class _CocktailDetailsLoaderPageWidgetState
    extends State<CocktailDetailsLoaderPageWidget> {
  final CocktailDefinition cocktailDefinition;

  _CocktailDetailsLoaderPageWidgetState(this.cocktailDefinition);
  @override
  Widget build(BuildContext context) =>
      Material(child: _buildCocktailDetailsPage(context));

  Widget _buildCocktailDetailsPage(BuildContext context) =>
      FutureBuilder<Cocktail>(
          future: repository.fetchCocktailDetails(widget.cocktailId),
          builder: (ctx, snapshot) {
            if (snapshot.hasData) {
              return CocktailDetailPage(
                cocktail: snapshot.data,
                cocktailDefinition: cocktailDefinition,
              );
            }

            return Center(child: CircularProgressIndicator());
          });
}
