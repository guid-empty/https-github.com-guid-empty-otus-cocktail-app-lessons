import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/ui/pages/details/cocktail_detail_page.dart';
import 'package:cocktail_app/ui/stores/favourite_cocktail/favourite_cocktail_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CocktailDetailsLoaderPageWidget extends StatefulWidget {
  final String cocktailId;

  const CocktailDetailsLoaderPageWidget({Key key, @required this.cocktailId}) : super(key: key);

  @override
  _CocktailDetailsLoaderPageWidgetState createState() => _CocktailDetailsLoaderPageWidgetState();
}

class _CocktailDetailsLoaderPageWidgetState extends State<CocktailDetailsLoaderPageWidget> {
  @override
  Widget build(BuildContext context) => Material(child: _buildCocktailDetailsPage(context));

  Widget _buildCocktailDetailsPage(BuildContext context) => FutureBuilder<Cocktail>(
      future: context.watch<AsyncCocktailRepository>().fetchCocktailDetails(widget.cocktailId),
      builder: (ctx, snapshot) {
        if (snapshot.hasData) {
          final Cocktail cocktail = snapshot.data;
          return Provider(
              create: (context) => FavouriteCocktailStore.create(listStore: context.read(), cocktail: cocktail),
              child: CocktailDetailPage(cocktail));
        }

        return Center(child: CircularProgressIndicator());
      });
}
