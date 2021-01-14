import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/main.dart';
import 'package:cocktail_app/ui/pages/details/cocktail_detail_page.dart';
import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:cocktail_app/stores/cocktail_store.dart';
import 'package:provider/provider.dart';

class CocktailDetailsLoaderPageWidget extends StatefulWidget {
  final String cocktailId;

  const CocktailDetailsLoaderPageWidget({Key key, @required this.cocktailId})
      : super(key: key);

  @override
  _CocktailDetailsLoaderPageWidgetState createState() =>
      _CocktailDetailsLoaderPageWidgetState();
}

class _CocktailDetailsLoaderPageWidgetState
    extends State<CocktailDetailsLoaderPageWidget> {
  @override
  Widget build(BuildContext context) =>
      Material(child: _buildCocktailDetailsPage(context));

  Widget _buildCocktailDetailsPage(BuildContext context) {
    //обращение к стору, созданному на уровне приложения
    final store = Provider.of<CocktailStore>(context);

    store.setCurrentCocktailId(widget.cocktailId);

    print(widget.cocktailId);

    return Observer(
      builder: (_) {
        if (store.hasCocktail) {
          return CocktailDetailPage(store.currentCocktail);
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
