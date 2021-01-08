import 'package:flutter/material.dart';
import 'package:homework/core/src/model/cocktail_definition.dart';
import 'package:homework/core/src/repository/async_cocktail_repository.dart';
import 'package:homework/ui/coctail_detail_page.dart';

class CocktailGridItem extends StatelessWidget {
  const CocktailGridItem(this.cocktailDefinition, {Key key}) : super(key: key);

  static const double aspectRatio = 170 / 215;

  final CocktailDefinition cocktailDefinition;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          openCocktailDetailsScreen(context);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: [
              DecoratedBox(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.44, 0.94],
                        colors: [Color.fromRGBO(14, 13, 19, 0), Color(0xFF0E0D13)])),
                position: DecorationPosition.foreground,
                child: Hero(
                  tag: cocktailDefinition.drinkThumbUrl ?? '',
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
                      Text(cocktailDefinition.name ?? '', style: Theme.of(context).textTheme.bodyText1),
                    ]),
              )
            ],
          ),
        ));
  }

  void openCocktailDetailsScreen(BuildContext context) async {
    var cocktail = await AsyncCocktailRepository().fetchCocktailDetails(cocktailDefinition.id);
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return CocktailDetailPage(cocktail);
    }));
  }
}
