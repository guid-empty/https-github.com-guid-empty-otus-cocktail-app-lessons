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

import 'dart:io';

import 'package:cocktail/core/models.dart';
import 'package:cocktail/core/src/repository/async_cocktail_repository.dart';
import 'package:flutter/material.dart';
import 'theme/style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CocktailsFilterScreen extends StatefulWidget {
  @override
  CocktailsFilterState createState() => CocktailsFilterState();
}

class CocktailsFilterState extends State<CocktailsFilterScreen>{

  CocktailCategory selectedCategory = CocktailCategory.values.first;
  SearchCocktailState searchState = SearchCocktailState.Idle;

  Stream stream;

  @override
  void initState() {
    stream = AsyncCocktailRepository()
                .fetchCocktailsByCocktailCategory(selectedCategory)
                .asStream();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 5),
              padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
              decoration: searchText,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/images/search.svg'),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text("asjdhajh", style: text15White,)
                    ),
                  ),
                  SvgPicture.asset('assets/images/clear.svg'),
                ]
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:
                  CocktailCategory.values.map((element) =>
                    _tagWidget(selectedCategory, element)
                  ).toList()
              ),
            ),
            Expanded(
              child: StreamBuilder(
                stream: stream,
                builder: (context, snapshot){

                  if (snapshot.connectionState == ConnectionState.none) {print("ConnectionState.none");}

                  if (snapshot.connectionState == ConnectionState.waiting) {print("ConnectionState.waiting");}

                  if (snapshot.connectionState == ConnectionState.active) {print("ConnectionState.active");}

                  if (snapshot.connectionState == ConnectionState.done) {
                    print("ConnectionState.done");
                    if (snapshot.hasData) {
                      return _cocktailList(snapshot.data);
                    }

                    if (snapshot.hasError) {
                      return _errorScreen(snapshot);
                    }
                  }
                  return _loadingScreen();
                }
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tagWidget(CocktailCategory selected,
                    CocktailCategory current) => GestureDetector(
    child: Container(
      margin: EdgeInsets.fromLTRB(5, 15, 5, 15),
      padding: EdgeInsets.all(15),
      decoration: selected == current ? tabActive : tabInactive,
      child: Text(
        current.value,
        style: text15White,
      ),
    ),
    onTap: () => {
      setState(() {
        selectedCategory = current;
        stream = AsyncCocktailRepository()
            .fetchCocktailsByCocktailCategory(selectedCategory)
            .asStream();
      })
    },
  );

  Widget _idWidget(String text) => Container(
    margin: EdgeInsets.only(top: 10, bottom: 5),
    padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
    decoration: tabInactive,
    child: Text(
      text,
      style: text10White,
    ),
  );

  Widget _searchItem(CocktailDefinition cocktail) => Container(
    alignment: Alignment.bottomLeft,
    padding: EdgeInsets.all(15),
    decoration: cocktail.drinkThumbUrl == null ? searchItem : searchItemImage(cocktail.drinkThumbUrl),
    child: Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text( cocktail.name, style: text14White, ),
            _idWidget( "id:${cocktail.id}" ),
          ],
        ),
      ],
    ),
  );

  Widget _errorScreen(AsyncSnapshot snapshot) => Center(
    child: Text(
      snapshot.error.toString(),
      style: TextStyle(color: Colors.white),
    )
  );

  Widget _loadingScreen() => Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset('assets/images/shake.svg'),
        Text(
          "Поиск...",
          style: TextStyle(color: Colors.white),
        )
      ],
    ),
  );

  Widget _cocktailList(List<CocktailDefinition> data) => CustomScrollView(
    slivers: [
      SliverPadding(
        padding: EdgeInsets.all(20),
        sliver: SliverGrid.count(
          crossAxisCount: 2,
          childAspectRatio: 3/4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: data.map((it) => _searchItem(it)).toList(),
        ),
      ),
    ],
  );
}


enum SearchCocktailState{
  Idle,
  Search,
  Error,
  Data
}