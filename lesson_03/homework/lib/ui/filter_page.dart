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

import '../core/models.dart';
import '../core/src/model/cocktail_category.dart';
import '../core/src/repository/async_cocktail_repository.dart';
import '../progress_bar.dart';

final ValueNotifier<CocktailCategory> _category =
    ValueNotifier<CocktailCategory>(CocktailCategory.values.first);

class CocktailsFilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // строка поиска
            Container(
              padding: const EdgeInsets.only(left: 13, right: 13),
              child: _buildSearchArea(),
            ),
            // фильтр: список категорий
            Container(
              padding: const EdgeInsets.only(left: 8, right: 8),
              margin: const EdgeInsets.only(top: 22),
              child: CategoryList(),
            ),
            // результаты поиска по фильтру
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 8, right: 8),
                margin: const EdgeInsets.only(top: 22),
                child: Container(
                  child: _buildCocktailDetails(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // просто прямоугольник - заготовка для поиска
  Widget _buildSearchArea() => Container(
        width: 349,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            const Radius.circular(65.0),
          ),
          border: Border.all(
            color: const Color(0xff464551),
            width: 1,
          ),
        ),
      );

  // результат поиска: слушает valueListenable и использует значение для параметра запроса
  Widget _buildCocktailDetails() => ValueListenableBuilder(
        valueListenable: _category,
        builder: (BuildContext context, CocktailCategory value, Widget child) {
          // запрос списка коктейлей
          return FutureBuilder<Iterable<CocktailDefinition>>(
            future: AsyncCocktailRepository()
                .fetchCocktailsByCocktailCategory(_category.value),
            builder: (BuildContext context,
                AsyncSnapshot<Iterable<CocktailDefinition>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                // ожидание
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // виджет ожидания загрузки
                      ProgressBarWidget(),
                      Container(
                        margin: const EdgeInsets.only(top: 9),
                        child: const Text(
                          'Поиск...',
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffEAEAEA),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              } else if (snapshot.hasError) {
                // ошибка загрузки данных
                return Center(
                  child: Text(
                    'Ошибка: ${snapshot.error}',
                    style: const TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                );
              } else {
                // данные успешно получны
                var cocktailItems = snapshot.data;
                var gridItems = cocktailItems
                    .map((item) => _buildGridItem(item))
                    .toList(growable: false);
                /*
                // вариант с GridView
                return GridView.count(
                  mainAxisSpacing: 3,
                  crossAxisSpacing: 3,
                  children: gridItems,
                  crossAxisCount: 2,
                );
                */
                // вариант с CustomScrollView
                return CustomScrollView(
                  slivers: [
                    SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 3,
                              crossAxisSpacing: 3),
                      delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                        return gridItems[index];
                      }, childCount: gridItems.length),
                    ),
                  ],
                );
              }
            },
          );
        },
      );

  // плитка для Grid с инофрмацией о коктейле
  Widget _buildGridItem(CocktailDefinition cocktail) {
    return Container(
      child: Stack(
        children: [
          Image.network(cocktail.drinkThumbUrl),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: const EdgeInsets.only(left: 16, top: 13),
              width: 160,
              height: 94,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cocktail.name,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 16, top: 6),
                    margin: const EdgeInsets.only(top: 7),
                    child: Text(
                      cocktail.id,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// список категорий
class CategoryList extends StatefulWidget {
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  // выбранный элемент
  String _activeItem = CocktailCategory.values.first.name;

  _selectItem(String item) {
    setState(() {
      _activeItem = item;
    });
  }

  // decoration элемента а зависимости от того выбран он или нет
  BoxDecoration _getItemDecoration(bool isSelected) {
    return BoxDecoration(
      color: isSelected ? Color(0xff3B3953) : Color(0xff201F2C),
      borderRadius: const BorderRadius.all(
        const Radius.circular(30.0),
      ),
      border: Border.all(
        color: const Color(0xff2D2C39),
        width: 1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      child: ListView.separated(
        itemCount: CocktailCategory.values.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          var item = CocktailCategory.values.toList(growable: false)[index];
          return GestureDetector(
            child: Container(
              decoration: _getItemDecoration(item.name == _activeItem),
              height: 46,
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 14, bottom: 14),
              child: Center(
                child: Text(
                  item.value,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
            onTap: () {
              _selectItem(item.name);
              _category.value = item;
            },
          );
        },
      ),
    );
  }
}
