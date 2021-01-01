import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/redux/app_state.dart';
import 'package:cocktail_app/redux/favorites/favorites_view_model.dart';
import 'package:cocktail_app/redux/favorites/thunk/on_add_to_favorite.dart';
import 'package:cocktail_app/redux/favorites/thunk/on_remove_from_favorites.dart';
import 'package:cocktail_app/ui/pages/cocktail_details_loader_page.dart';
import 'package:cocktail_app/ui/style/custom_colors.dart';
import 'package:flutter/material.dart';

import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

class CocktailGridItem extends StatelessWidget {
  static const double aspectRatio = 170 / 215;

  final CocktailDefinition cocktailDefinition;

  final CocktailCategory selectedCategory;

  const CocktailGridItem(this.cocktailDefinition, {Key key, this.selectedCategory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (context) => CocktailDetailsLoaderPageWidget(cocktailId: cocktailDefinition.id),
          ),
        );
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
                      colors: [Color.fromRGBO(14, 13, 19, 0), Color(0xFF0E0D13)])),
              position: DecorationPosition.foreground,
              child: Image.network(
                cocktailDefinition.drinkThumbUrl ?? '',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(cocktailDefinition.name ?? '', style: Theme.of(context).textTheme.bodyText1),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, mainAxisSize: MainAxisSize.max, children: [
                    Chip(
                      backgroundColor: CustomColors.black,
                      label: Text(selectedCategory.name, style: Theme.of(context).textTheme.caption),
                    ),
                    _getIsFavoriteIcon(context, cocktailDefinition),
                  ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getIsFavoriteIcon(BuildContext context, CocktailDefinition definition) {
    final appStore = StoreProvider.of<AppState>(context);
    print(appStore.state.favoritesState.favoritesMap);
    return StoreConnector<AppState, FavoritesViewModel>(
      converter: (Store<AppState> store) {
        return store.state.favoritesState.isFavorites(definition.id)
            ? FavoritesViewModel.favorite()
            : FavoritesViewModel.not();
      },
      builder: (context, viewModel) => viewModel.when(
          favorite: () => IconButton(
            icon: Icon(Icons.favorite, color: Colors.white),
            onPressed: () {
              appStore.dispatch(OnRemoveFromFavorites(definition));
            },
          ),
          not: () => IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {
              appStore.dispatch(OnAddToFavorites(definition));
            },
          )
      )
    );
  }
}
