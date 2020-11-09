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

import 'package:cocktail/core/models.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CocktailsFilterScreen extends StatelessWidget {
  final ValueNotifier<CocktailCategory> _category = ValueNotifier(CocktailCategory.values.first);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildSearchField(),
            _buildCategoriesList(),
            Expanded(child: _buildCocktailsList()),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return Padding(
        padding: const EdgeInsets.all(13.0),
        child: Container(
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            border: Border.all(color: const Color(0xFF464551), width: 1),
          ),
          child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  prefixIcon: SvgPicture.asset(
                    'assets/search.svg',
                    color: Colors.white,
                    height: 28.0,
                    width: 28.0,
                    fit: BoxFit.none,
                  ),
                  suffixIcon: SvgPicture.asset(
                    'assets/close.svg',
                    color: Color(0XFF999999),
                    height: 8.0,
                    width: 8.0,
                    fit: BoxFit.none,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)), borderSide: BorderSide.none),
                  filled: true,
                  hintStyle: const TextStyle(color: Colors.white),
                  hintText: 'Search')),
        ));
  }

  Widget _buildCategoriesList() {
    return SizedBox(
      height: 70,
      child: Container(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: ValueListenableBuilder(
            valueListenable: _category,
            builder: (context, value, child) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: CocktailCategory.values.length,
                itemBuilder: (context, index) {
                  return _buildCocktailCategoryItem(CocktailCategory.values.elementAt(index), value);
                },
              );
            }),
      ),
    );
  }

  Widget _buildCocktailCategoryItem(CocktailCategory category, CocktailCategory selected) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              border: Border.all(color: const Color(0xFF2D2C39), width: 1),
              color: selected.name == category.name ? Color(0xFF3B3953) : Color(0xFF201F2C)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 10.0, bottom: 10.0),
              child: Text(
                category.value,
                style: const TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ),
        onTap: () {
          _category.value = category;
        },
      ),
    );
  }

  Widget _buildCocktailsList() {
    return ValueListenableBuilder(
      valueListenable: _category,
      builder: (context, value, child) {
        return FutureBuilder<Iterable<CocktailDefinition>>(
            future: AsyncCocktailRepository().fetchCocktailsByCocktailCategory(value),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting)
                return _buildWaitingWidget();
              else if (snapshot.hasData) {
                return _buildResultList(snapshot.data);
              } else {
                return _buildErrorWidget(snapshot.error);
              }
            });
      },
    );
  }

  Widget _buildResultList(Iterable<CocktailDefinition> data) {
    return Padding(
      padding: const EdgeInsets.only(left: 26.0, right: 26.0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 0.69,
        children: data.map((cocktail) => _buildGridItem(cocktail)).toList(),
      ),
    );
  }

  Widget _buildGridItem(CocktailDefinition cocktail) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        child: Stack(
          children: [
            Image.network(
              cocktail.drinkThumbUrl,
              fit: BoxFit.fill,
            ),
            Container(
              decoration: BoxDecoration(
                gradient:
                    LinearGradient(begin: FractionalOffset.topCenter, end: FractionalOffset.bottomCenter, colors: [
                  Color(0x00000000),
                  Color(0x80000000),
                  Color(0xFF000000),
                ], stops: [
                  0.5,
                  0.75,
                  1.0
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0, top: 18.0, bottom: 18.0, right: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      cocktail.name ?? '',
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      border: Border.all(color: const Color(0xFF2D2C39), width: 1),
                      color: Color(0xFF15151C),
                    ),
                    padding: const EdgeInsets.only(left: 16.0, top: 6.0, bottom: 6.0, right: 16.0),
                    margin: const EdgeInsets.only(top: 7),
                    child: Text(
                      'id:${cocktail.id}',
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
          ],
        ),
      ),
    );
  }

  Widget _buildWaitingWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset('assets/shaker.svg'),
        ),
        Text(
          'Поиск...',
          style: const TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w400),
        )
      ],
    );
  }

  Widget _buildErrorWidget(String error) {
    return Center(
        child: Text(
      'Error: $error',
      style: const TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w400),
    ));
  }
}
