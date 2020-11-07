// TODO: Сделать экран Фильтр по категории
// Ссылка на макет: https://www.figma.com/file/Uzn5jHYiiFgacPCWNhwbc5/%D0%9A%D0%BE%D0%BA%D1%82%D0%B5%D0%B9%D0%BB%D0%B8-Copy?node-id=20%3A590

// 1. Фильтры - это CocktailCategory, получить все значения можно через CocktailCategory.values
// 2. Поиск по фильтру делаем через AsyncCocktailRepository().fetchCocktailsByCocktailCategory(CocktailCategory)
// 3. Используем StreamBuilder/FutureBuilder
// 4. По нажатию на категорию на странице должны обновится список коктейлей. Выбранная категория подсвечивается как в дизайне. По умолчанию выбрана первая категория.
// 5. Поиск по названию пока что не делаем!
// 6. Должны отображаться ошибки и состояние загрузки.
// 7. Для скролла используем CustomScrollView
// 8. Делаем fork от репозитория и сдаем через PR
// 9. Помним про декомпозицию кода по методам и классам.

import 'package:cocktail/core/models.dart';
import 'package:cocktail/core/src/repository/async_cocktail_repository.dart';
import 'package:cocktail/services/colors.dart';
import 'package:flutter/material.dart';
import '../widgets/search_window.dart';
import '../widgets/cocktail_type_label.dart';
import './cocktail_detail_builder.dart';
import '../widgets/cocktail_card.dart';

class CocktailsFilterScreen extends StatefulWidget {
  @override
  _CocktailsFilterScreenState createState() => _CocktailsFilterScreenState();
}

class _CocktailsFilterScreenState extends State<CocktailsFilterScreen> {
  CocktailCategory currentCategory = CocktailCategory.ordinaryDrink;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: kDescriptionBackground,
          // основной Column, содержащий все виджеты
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // строка поиска
              SearchWindow(),
              // крутилка выбора типа коктейля
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (CocktailCategory cocktailCategory
                          in CocktailCategory.values)
                        GestureDetector(
                          child: CocktailTypeLabel(
                            cocktailCategory: cocktailCategory.value,
                            isActive: currentCategory == cocktailCategory,
                          ),
                          onTap: () {
                            setState(() {
                              currentCategory = cocktailCategory;
                            });
                          },
                        ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 15,
              ),
              // грид коктейлей
              FutureBuilder(
                future: AsyncCocktailRepository()
                    .fetchCocktailsByCocktailCategory(currentCategory),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text('ошибка: ${snapshot.error.toString()},'),
                    );
                  }

                  if (snapshot.hasData &&
                      snapshot.connectionState != ConnectionState.waiting) {
                    return Expanded(
                      child: CustomScrollView(
                        slivers: [
                          SliverGrid(
                            delegate: SliverChildBuilderDelegate(
                                (context, index) => GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                CocktailDetailBuilder(
                                              cocktailId:
                                                  snapshot.data[index].id,
                                            ),
                                          ),
                                        );
                                      },
                                      child: CocktailCard(
                                        name: snapshot.data[index].name,
                                        id: snapshot.data[index].id,
                                        drinkThumbUrl:
                                            snapshot.data[index].drinkThumbUrl,
                                      ),
                                    ),
                                childCount: snapshot.data.length),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 0.8, crossAxisCount: 2),
                          )
                        ],
                      ),
                    );
                  }
                  return Expanded(
                    child: Center(
//                      child: CircularProgressIndicator(),
                      child: Container(
                        height: 50,
                        width: 50,
                        child: Image.asset('images/shaker.png'),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
