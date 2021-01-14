import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/ui/pages/cocktail_details_loader_page.dart';
import 'package:cocktail_app/ui/style/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:cocktail_app/stores/cocktail_store.dart';
import 'package:provider/provider.dart';

class CocktailGridItem extends StatefulWidget {
  static const double aspectRatio = 170 / 215;

  final CocktailDefinition cocktailDefinition;

  final CocktailCategory selectedCategory;

  const CocktailGridItem(this.cocktailDefinition,
      {Key key, this.selectedCategory})
      : super(key: key);

  @override
  _CocktailGridItemState createState() => _CocktailGridItemState();
}

class _CocktailGridItemState extends State<CocktailGridItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //добавлен .then SetState для корректного обновления страницы при возврате со страницы детального отображения коктейля
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CocktailDetailsLoaderPageWidget(
                  cocktailId: widget.cocktailDefinition.id)),
        ).then((value) => setState(() {}));
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
                      stops: [0.44, 0.94],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(14, 13, 19, 0),
                        Color(0xFF0E0D13)
                      ])),
              position: DecorationPosition.foreground,
              child: Image.network(
                widget.cocktailDefinition.drinkThumbUrl ?? '',
                fit: BoxFit.cover,
              ),
            ),
            // редизайн - иконка отнесения в избранное перенесена вверх и вправо
            Observer(builder: (_) {
              return Positioned(
                top: 0,
                right: 0,
                child: _getIsFavoriteIcon(context),
              );
            }),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.cocktailDefinition.name ?? '',
                      style: Theme.of(context).textTheme.bodyText1),
                  // редизайн - тег коктейля вылезал за край, вместе с иконкой был слишком мелким
                  FittedBox(
                    child: Chip(
                      backgroundColor: CustomColors.black,
                      label: Text(widget.selectedCategory.name,
                          style: Theme.of(context).textTheme.caption),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getIsFavoriteIcon(context) {
    //обращение к стору, созданному на уровне приложения
    final store = Provider.of<CocktailStore>(context);
    if (store.favoriteCocktails
        .where((element) => element.id == widget.cocktailDefinition.id)
        .isNotEmpty) {
      return IconButton(
        icon: Icon(Icons.favorite, color: Colors.white),
        onPressed: () {
          //удаление из избранного
          store.removeFromFavoritiesById(widget.cocktailDefinition.id);
          widget.cocktailDefinition.setUnfav();
          setState(() {});
        },
      );
    } else {
      return IconButton(
        icon: Icon(Icons.favorite_border, color: Colors.white),
        onPressed: () {
          //добавление в избранное
          store.addItemToFavorities(widget.cocktailDefinition);
          widget.cocktailDefinition.setFav();
          setState(() {});
        },
      );
    }
  }
}
