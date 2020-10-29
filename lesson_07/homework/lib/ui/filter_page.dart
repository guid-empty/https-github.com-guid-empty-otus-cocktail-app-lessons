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
import 'package:cocktail/ui/custom_widgets/cocktail_card/cocktail_card.dart';
import 'package:cocktail/ui/custom_widgets/filter/filter_text_item.dart';
import 'package:cocktail/ui/custom_widgets/search_row/search_row.dart';
import 'package:flutter/material.dart';

class CocktailsFilterScreen extends StatelessWidget {
  // ignore: close_sinks
  final cocktailsController = StreamController<Iterable<CocktailDefinition>>();

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    var streamController = StreamController<String>.broadcast();
    streamController.sink.add(CocktailCategory.values.toList()[0].name);
    return MaterialApp(
      home: SafeArea(
        child: Container(
            color: Color(0xff1A1927),
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Color(0xff1A1927),
                  pinned: true,
                  expandedHeight: 140.0,
                  collapsedHeight: 140.0,
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: const EdgeInsets.all(0.0),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Material(child: SearchRow()),
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: CocktailCategory.values.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: FilterTextItem(
                                  category:
                                      CocktailCategory.values.toList()[index],
                                  categoryController: streamController,
                                  cocktailsController: cocktailsController,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                StreamBuilder<Object>(
                    stream: cocktailsController.stream,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return SliverGrid(
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 215.0,
                            mainAxisSpacing: 5.0,
                            crossAxisSpacing: 3.0,
                            childAspectRatio: 0.8
                          ),
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              return Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0)),
                                  child: CocktailCard(
                                    height: 215 + 215*0.8,
                                    cocktail: (snapshot.data as Iterable<CocktailDefinition>).toList()[index],));
                            },
                            childCount: (snapshot.data as Iterable<CocktailDefinition>).toList().length,
                          ),
                        );
                      } else {
                        return SliverToBoxAdapter(
                          child: Container(
                            child: Text("error"),
                          ),
                        );
                      }
                    }),
              ],
            )),
      ),
    );
  }
}
