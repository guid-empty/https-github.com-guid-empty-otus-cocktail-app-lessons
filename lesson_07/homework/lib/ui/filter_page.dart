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

import 'package:cocktail/events/category_filter_events.dart';
import 'package:cocktail/ui/custom_colors/custom_colors.dart';
import 'package:cocktail/ui/custom_widgets/cocktail_card/cocktail_card.dart';
import 'package:cocktail/ui/custom_widgets/search_row/search_row.dart';
import 'package:flutter/material.dart';

import 'custom_sliver/cocktail_header_sliver_delegate.dart';

class CocktailsFilterScreen extends StatefulWidget {
  @override
  State createState() => _CocktailsFilterScreenState();
}

class _CocktailsFilterScreenState extends State<CocktailsFilterScreen> {
  final cocktailsController = StreamController<dynamic>.broadcast();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.background,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: SearchRow(),
        ),
        body: StreamBuilder<Object>(
            stream: cocktailsController.stream.where((event) => event is Event),
            builder: (context, snapshot) {
              return CustomScrollView(
                slivers: [
                  SliverPersistentHeader(
                    floating: true,
                    pinned: true,
                    delegate: CocktailsCategoriesList(
                        cocktailsController: cocktailsController,
                        height: 70,
                        openHeight: 70),
                  ),
                  _streamBuilder(context, snapshot)
                ],
              );
            }));
  }

  Widget _loading(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: MediaQuery.of(context).size.height - 180,
        child: Center(
          child: Column(
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
          ),
        ),
      ),
    );
  }

  Widget _error(BuildContext context, String error) {
    return SliverToBoxAdapter(
      child: Container(
        height: MediaQuery.of(context).size.height - 180,
        child: Center(
          child: Material(
              color: Colors.transparent,
              child: Text(
                error,
                style: Theme.of(context).textTheme.headline5,
              )),
        ),
      ),
    );
  }

  Widget _streamBuilder(BuildContext context, AsyncSnapshot snapshot) {
    debugPrint("${snapshot.data} <= _streamBuilder");
    if (snapshot.hasError) {
      return _error(context, snapshot.error);
    } else if (snapshot.hasData) {
      if (snapshot.data is SuccessEvent) {
        var cocktails = (snapshot.data as SuccessEvent).value;
        return SliverPadding(
          padding: const EdgeInsets.only(left: 22, right: 22, bottom: 22),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 3.0,
                crossAxisSpacing: 3.0,
                childAspectRatio: 0.8),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return CocktailCard(
                  cocktail: cocktails[index],
                );
              },
              childCount: cocktails.length,
            ),
          ),
        );
      } else if (snapshot.data is Loading) {
        return _loading(context);
      } else {
        return _error(context, (snapshot.data as Error).message);
      }
    } else {
      return _error(context, "Unknown error");
    }
  }

  @override
  void dispose() {
    cocktailsController.close();
    super.dispose();
  }
}
