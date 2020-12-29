import 'package:flutter/material.dart';
import 'package:lesson_16/app/core/src/repository/cocktails_test_repository.dart';
import 'package:lesson_16/app/ui/root_page.dart';
import 'package:lesson_16/app/ui/style/theme.dart';
import 'package:lesson_16/samples/get_it/config.dart';
import 'package:provider/provider.dart';

import 'favorites_model.dart';
import 'filter_page_model.dart';

void buildProviderApp() {
  configureDependencies();
  runApp(MultiProvider(
    providers: [
      // Provider<CocktailRepository>(create: (context) {
      //   return TestCocktailRepository();
      // }),
      // ChangeNotifierProvider(
      //     lazy: false,
      //     create: (context) =>
      //     FavoritesViewModel(FavoritesLocalRepository(FileStorage()))
      //       ..fetch()),
      ChangeNotifierProvider(
          lazy: false,
          create: (context) => serviceLocator.get<FavoritesViewModel>()..fetch()),
      ChangeNotifierProvider(
          lazy: false,
          create: (context) =>
              FilterPageViewModel(CocktailTestRepository())..init())
    ],
    child: MaterialApp(
      theme: mainThemeData,
      home: RootPage(),
    ),
  ));
}
