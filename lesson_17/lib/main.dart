import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:lesson_17/app/bloc_lib/cocktails/cocktails_bloc.dart';
import 'package:lesson_17/app/ui/style/theme.dart';
import 'package:provider/provider.dart';

import 'app/bloc_lib/categories/categories_bloc.dart';
import 'app/bloc_lib/categories/categories_events.dart';
import 'app/bloc_lib/favorites/favorites_cubit.dart';
import 'app/core/src/repository/async_cocktail_repository.dart';
import 'app/ui/root_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build();
  runApp(MultiProvider(
    providers: [
      RepositoryProvider(create: (ctx) => AsyncCocktailRepository()),
      //Categories
      BlocProvider(
          create: (ctx) => CategoriesBloc()..add(CategoriesFetched())),
      //CustomBloc
      Provider<CocktailsBloc>(
          dispose: (ctx, value) {
            value.close();
          },
          create: (ctx) => CocktailsBloc(
              RepositoryProvider.of<AsyncCocktailRepository>(ctx),
              BlocProvider.of<CategoriesBloc>(ctx))),
      //Favorites
      BlocProvider(create: (ctx) => FavoritesCubit())
    ],
    child: MaterialApp(
      theme: mainThemeData,
      home: RootPage(),
    ),
  ));
}
