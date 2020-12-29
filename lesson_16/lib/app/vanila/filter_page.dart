// TODO: Сделать экран Фильтр по категории
// Ссылка на макет: https://www.figma.com/file/Uzn5jHYiiFgacPCWNhwbc5/%D0%9A%D0%BE%D0%BA%D1%82%D0%B5%D0%B9%D0%BB%D0%B8-Copy?node-id=20%3A590

// 1. Фильты - это CocktailCategory, получить все значения можно через CocktailCategory.values
// 2. Поиск по фильтру делаем через AsyncCocktailRepository().fetchCocktailsByCocktailCategory(CocktailCategory)
// 3. Используем StreamBuilder/FutureBuilder
// 4. По нажатию на категорию на странице должны обновится список коктейлей. Выбранная категория подсвечивается как в дизайне. По умолчанию выбрана первая категория.
// 5. Поиск по названию пока что не делаем!
// 6. Должны отображаться ошибки и состояние загрузки.
// 7. Для скролла используем CustomScrollView
// 8. Делаем fork от репозитория и сдаем через PR
// 9. Помним про декомпозицию кода по методам и классам.

import 'package:flutter/material.dart';
import 'package:lesson_16/app/core/src/model/cocktail_category.dart';
import 'package:lesson_16/app/core/src/model/cocktail_definition.dart';
import 'package:lesson_16/app/repository/cocktail_repository.dart';
import 'package:lesson_16/app/ui/cocktails/cocktail_grid_item.dart';
import 'package:lesson_16/app/ui/cocktails/cocktails_grid_delegate.dart';
import 'package:lesson_16/app/ui/cocktails/fitler_bar.dart';


class CocktailsFilterScreen extends StatefulWidget {
  const CocktailsFilterScreen(
    this.repository, {
    Key key,
  }) : super(key: key);

  final CocktailRepository repository;

  @override
  _CocktailsFilterScreenState createState() => _CocktailsFilterScreenState();
}

class _CocktailsFilterScreenState extends State<CocktailsFilterScreen> {
  final _categoryNotifier =
      ValueNotifier<CocktailCategory>(CocktailCategory.values.first);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
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
                _buildCocktailItems(context)
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildCocktailItems(BuildContext context) {
    return FutureBuilder<Iterable<CocktailDefinition>>(
        future: widget.repository
            .fetchCocktailsByCocktailCategory(_categoryNotifier.value),
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
                    return CocktailGridItem(snapshot.data.elementAt(index));
                  }, childCount: snapshot.data.length),
                  gridDelegate: cocktailsGridDelegate),
            );
          }

          //todo set loader
          return SliverFillRemaining(child: const SizedBox());
        });
  }
}
