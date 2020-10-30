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

import 'dart:async';

import 'package:cocktail/core/models.dart';
import 'package:cocktail/core/src/model/cocktail_category.dart';
import 'package:cocktail/ui/custom_colors/custom_colors.dart';
import 'package:cocktail/ui/custom_widgets/cocktail_card/cocktail_card.dart';
import 'package:cocktail/ui/custom_widgets/filter/filter_text_item.dart';
import 'package:cocktail/ui/custom_widgets/search_row/search_row.dart';
import 'package:flutter/material.dart';

class CocktailsFilterScreen extends StatefulWidget {

  @override
  State createState() => _CocktailsFilterScreenState();
}

class _CocktailsFilterScreenState extends State<CocktailsFilterScreen> {

  final cocktailsController = StreamController<Iterable<CocktailDefinition>>();
  final streamController = StreamController<String>.broadcast();

  @override
  void dispose() {
    cocktailsController.close();
    streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SearchRow(),
          Container(
            height: 46,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: CocktailCategory.values.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: FilterTextItem(
                    category: CocktailCategory.values.toList()[index],
                    categoryController: streamController,
                    cocktailsController: cocktailsController,
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: StreamBuilder<Object>(
                  stream: cocktailsController.stream,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return CustomScrollView(slivers: [
                        SliverGrid(
                          gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 3.0,
                              crossAxisSpacing: 3.0,
                              childAspectRatio: 0.8),
                          delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                              return CocktailCard(
                                cocktail: (snapshot.data
                                as Iterable<CocktailDefinition>)
                                    .toList()[index],
                              );
                            },
                            childCount:
                            (snapshot.data as Iterable<CocktailDefinition>)
                                .toList()
                                .length,
                          ),
                        ),
                      ]);
                      // } else if (snapshot.hasError) {
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Material(
                            color: Colors.transparent,
                            child: Text(
                              "${snapshot.error}",
                              style: Theme.of(context).textTheme.headline5,
                            )),
                      );
                    } else {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.file_download,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              color: Colors.transparent,
                              child: Text(
                                "loading ...",
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                  }),
            ),
          )
        ],
      ),
    );
  }
}
