import 'package:cocktail_app/core/src/model/cocktail_category.dart';
import 'package:cocktail_app/core/src/model/cocktail_definition.dart';
import 'package:cocktail_app/main.dart';
import 'package:cocktail_app/ui/aplication/application_scaffold.dart';
import 'package:cocktail_app/ui/pages/categories_fitler_bar_delegate.dart';
import 'package:cocktail_app/ui/pages/cocktail_grid_item.dart';
import 'package:flutter/material.dart';

///
/// TODO:
///        - Склонировать соотвествующий github репозиторий с заготовкой проекта для этого урока (для соот-щего подхода к управлению состоянием приложения - redux, bloc mobx версии) (https://github.com/guid-empty/otus-cocktail-app-lessons)
///        - Внести изменения в классы описания состояний для экрана FavouriteCocktailsPage (будут помечены /// todo)
///        - Открыть класс экрана FavouriteCocktailsPage
///        - Внести изменения в код экрана, выделив логику для получения состояния используя один из ранее рассмотренных подходов к state management
///        - Внести изменения в экран CocktailDetailPage (CocktailTitle) для управления состояния isFavourite текущей модели (коктейль должен появиться или удалиться в списке избранного в соот-щем блоке состояния приложения)
///        - Убедиться, что изменения состояния isFavourite для конкретного коктейля отражается в поведении экрана FavouriteCocktailsPage (появляется новый избранный коктейль, удаляется ранее убранный из favourites)
///
/// На усмотрение студента:
///        - Можно выполнить любую декомпозицию класса FavouriteCocktailsPage для внесения изменений в управление состоянием (рефакторинг)
///        - Можно выполнить любую декомпозицию класса CocktailDetailPage (CocktailTitle) для внесения изменений в управление состоянием (рефакторинг)
///        - Можно выполнить любую декомпозицию в самих классах управления состоянием приложения (store, block etc)
///        - Можно выполнить рефакторинг кнопки isFavourite, выделив ее в отдельный виджет и используя на обоих экранах
/// Мокап экрана Избранное (FavouriteCocktailsPage):
/// https://www.figma.com/file/UKHKopXpDy02I232c9mdwZ/%D0%9A%D0%BE%D0%BA%D1%82%D0%B5%D0%B9%D0%BB%D0%B8?node-id=24%3A441
///
/// В этом экране используется точно такая же  верстка, как и на экране фильтрации (то есть можно переиспользовать экран выдачи результатов по категориям)
///
class FavouriteCocktailsPage extends StatefulWidget {
  final CocktailCategory selectedCategory = CocktailCategory.cocktail;
  @override
  _FavouriteCocktailsPageState createState() =>
      _FavouriteCocktailsPageState(selectedCategory);
}

class _FavouriteCocktailsPageState extends State<FavouriteCocktailsPage> {
  CocktailCategory selectedCategory = CocktailCategory.cocktail;
  final ValueNotifier<CocktailCategory> _categoryNotifier;

  _FavouriteCocktailsPageState(this.selectedCategory)
      : _categoryNotifier = ValueNotifier<CocktailCategory>(selectedCategory);

  @override
  Widget build(BuildContext context) {
    return ApplicationScaffold(
      title: 'Избранное',
      currentSelectedNavBarItem: 2,
      child: _buildFavoriteCocktailItems(context),
    );
  }

  Widget _buildFavoriteCocktailItems(BuildContext context) =>
      ValueListenableBuilder(
        valueListenable: _categoryNotifier,
        builder: (ctx, value, child) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: SizedBox(height: 21)),
              SliverPersistentHeader(
                delegate: CategoriesFilterBarDelegate(
                  CocktailCategory.values,
                  onCategorySelected: (category) {
                    _categoryNotifier.value = category;
                  },
                  selectedCategory: _categoryNotifier.value,
                ),
                floating: true,
              ),
              SliverToBoxAdapter(child: SizedBox(height: 24)),
              _buildCocktailItems(context),
            ],
          );
        },
      );

  Widget _buildCocktailItems(BuildContext context) {
    return FutureBuilder<Iterable<CocktailDefinition>>(
        ////////////////////////////////////////////////////////////////////////////////////////

        future: favoriteRepository.getAll(),
        ///////////////////////////////////////////////////////////////////////////////////////
        builder: (ctx, snapshot) {
          if (snapshot.hasError) {
            return SliverFillRemaining(
                child: Center(child: Text(snapshot.error.toString())));
          }

          if (snapshot.hasData) {
            return SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate((ctx, index) {
                    return CocktailGridItem(snapshot.data.elementAt(index),
                        selectedCategory: _categoryNotifier.value);
                  }, childCount: snapshot.data.length),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: CocktailGridItem.aspectRatio,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 6,
                      crossAxisCount: 2)),
            );
          }

          //  todo set loader
          return SliverFillRemaining(child: const SizedBox());
        });
  }
}
