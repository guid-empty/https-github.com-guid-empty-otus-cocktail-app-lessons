import 'package:flutter/material.dart';
import 'package:homework/ui/favourite_cocktails_screen.dart';
import 'package:homework/ui/style/theme.dart';

import 'core/src/repository/async_cocktail_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: mainThemeData,
      themeMode: ThemeMode.dark,
      home: FavouriteCocktailsScreen(
        AsyncCocktailRepository(),
      ),
    );
  }
}

/* favourite_cocktails_screen уже готов. Остается только сделать переход со списка коктейлей 
на страницу коктейля. Основная загвоздка в том что в списке у нас модель CocktailDefinition, 
а на странице CocktailDetailsScreen мы используем модель Cocktail.
Эту проблему вам и предлагается решить.
Получить модель по id можно с помощью AsyncCocktailRepository().fetchCocktailDetails(id) 



Открыть класс экрана FavouriteCocktailsScreen
Внести изменения в код экрана, выделив соотвествующие обработчики событий на нажатие элемента из списка избранных коктейлей
В обработчике события на переход к экрану описания коктейля выполнить асинхронное получение модели коктейля
В обработчике события на переход к экрану описания коктейля после получения модели коктейля выполнить навигацию 
к экрану описания коктейля (CocktailDetailsScreen) с передачей полученной модели

Убедиться, что CocktailDetailsScreen отображает корректно полученную модель



Потребуется: реализовать навигацию в экран описания коктейля из списка Избранное (Favourite Cocktails).

- Склонировать соотвествующий github репозиторий с заготовкой проекта для этого урока
- Открыть класс экрана FavouriteCocktailsScreen
- Внести изменения в код экрана, выделив соотвествующие обработчики событий на нажатие элемента 
из списка избранных коктейлей
- В обработчике события на переход к экрану описания коктейля выполнить асинхронное получение 
модели коктейля
- В обработчике события на переход к экрану описания коктейля после получения модели коктейля 
выполнить навигацию к экрану описания коктейля (CocktailDetailsScreen) с передачей полученной модели
- Убедиться, что CocktailDetailsScreen отображает корректно полученную модель

*/
