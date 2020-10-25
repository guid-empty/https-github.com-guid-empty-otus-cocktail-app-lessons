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
// Немного поменял дизайн. В карточке коктейля. Нижняя плашка это будет id коктейля.
// На FilterBar. Его можно сделать через SingleChildScrollView или ListView указав scrollDirection: Axis.horizontal
// Для самих фильтров можно использовать что нибудь из семейства Chip из material, либо обернуть в GestureDetector(onTap:() =>  ,child: Widget(),);

// Stack(children: [
//   //Рисунок
//   //Column -> children -> Text -> Chip
// ]);

import 'package:flutter/material.dart';

class CocktailsFilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF000000),
      child: Padding(
        padding: const EdgeInsets.only(top: 44),
        child: Column(
          children: [
            Container(
              height: 41,
              width: 375,
              padding: const EdgeInsets.fromLTRB(13, 4, 13, 22),
              margin: const EdgeInsets.fromLTRB(20, 10, 308.69, 9.69),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xFF181723),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 20.31,
                    color: const Color(0xFFFFFFFF),
                  ),
                  Flexible(child: TextField()),
                ],
              ),
            ),
            // CustomScrollView(
            //   slivers: [],
            // ),
          ],
        ),
      ),
    );
  }
}
