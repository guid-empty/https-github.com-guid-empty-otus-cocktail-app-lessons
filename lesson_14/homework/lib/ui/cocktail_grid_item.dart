import 'package:flutter/material.dart';
import 'package:homework/core/src/model/cocktail_definition.dart';
import 'package:homework/core/src/repository/async_cocktail_repository.dart';
import 'package:homework/core/src/model/cocktail.dart';

import 'package:homework/ui/coctail_detail_page.dart';
import 'package:homework/ui/progress_loader.dart';

class CocktailGridItem extends StatelessWidget {
  CocktailGridItem(this.cocktailDefinition, {Key key}) : super(key: key);

  static const double aspectRatio = 170 / 215;

  final CocktailDefinition cocktailDefinition;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    stops: [0.44, 0.94],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(14, 13, 19, 0),
                      Color(0xFF0E0D13)
                    ])),
            position: DecorationPosition.foreground,
            child: GestureDetector(
              onTap: () async {
                _showProgressBar(context);
                try {
                  Cocktail cocktail = await AsyncCocktailRepository()
                      .fetchCocktailDetails(cocktailDefinition.id);

                  Route route = MaterialPageRoute(
                      builder: (context) =>
                          CocktailDetailPage(cocktail: cocktail));
                  Navigator.pop(context);
                  Navigator.push(context, route);
                } catch (e) {
                  _showErrorDialog(context, e);
                }
              },
              child: Image.network(
                cocktailDefinition.drinkThumbUrl ?? '',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(cocktailDefinition.name ?? '',
                      style: Theme.of(context).textTheme.bodyText1),
                ]),
          )
        ],
      ),
    );
  }

  void _showProgressBar(context) {
    const Widget content = Center(
      child: ProgressLoader(),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => content,
    );
  }

  Future _showErrorDialog(BuildContext context, e) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(
          'Error: $e',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    ).then((value) => Navigator.pop(context));
  }
}

class ProgressCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ProgressLoader(),
    );
  }
}
