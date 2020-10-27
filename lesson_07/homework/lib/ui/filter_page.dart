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

import 'file:///C:/Data/FlutterProjects/otus-cocktail-app-lessons/lesson_07/homework/lib/core/src/ui/search_field.dart';
import 'package:cocktail/core/src/ui/categories_list.dart';
import 'package:cocktail/core/src/ui/cocktail_sliver.dart';
import 'package:cocktail/core/src/ui/cocktails_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/models.dart';

class CocktailsFilterScreen extends StatefulWidget {
  @override
  _CocktailsFilterState createState() => _CocktailsFilterState();
}

class _CocktailsFilterState extends State<CocktailsFilterScreen> {
  CocktailCategory _selected;
  Future<Iterable<CocktailDefinition>> _cocktails;

  @override
  void initState() {
    super.initState();
    onCatSelection(CocktailCategory.values.first);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.fromLTRB(13, 49, 13, 0),
        decoration: BoxDecoration(
            color: Color(0xFF1A1926),
            gradient: LinearGradient(
              //todo почему градиент выглядит не гладко на эмуляторе?
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.91],
                colors: [Color(0xFF1A1927), Color(0xFF0B0B12)])),
        child: Column(
            children: <Widget>[SearchField(), CategoriesList(_selected, onCatSelection),
              if(_cocktails != null) CocktailsGridView(_cocktails)]));
  }

  void onCatSelection(CocktailCategory category) async{
    setState(() {
      _selected = category;
      _cocktails = AsyncCocktailRepository().fetchCocktailsByCocktailCategory(category);
    });
  }
}
