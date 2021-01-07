import 'package:cocktail_app/cubit/favorites_cubit.dart';
import 'package:cocktail_app/cubit/favorites_state.dart';
import 'package:cocktail_app/ui/aplication/application_scaffold.dart';
import 'package:cocktail_app/ui/pages/cocktail_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///
/// TODO:
///        - Склонировать соотвествующий github репозиторий с заготовкой проекта для этого урока (для соот-щего подхода к управлению состоянием приложения - redux, bloc mobx версии) (https://github.com/guid-empty/otus-cocktail-app-lessons)
///        - Внести изменения в классы описания состояний для экрана FavouriteCocktailsPage (будут помечены /// todo)
///        - Открыть класс экрана FavouriteCocktailsPage
///        - Внести изменения в код экрана, выделив логику для получения состояния используя один из ранее рассмотренных подходов к state management
///        - Внести изменения в экран CocktailDetailPage (CocktailTitle) для управления состояния isFavourite текущей модели (коктейль должен появиться или удалиться в списке избранного в соот-щем блоке состояния приложения)
///        - Убедиться, что изменения состояния isFavourite для конкретного коктейля отражается в поведении экрана FavouriteCocktailsPage (появляется новый избранный коктейль, удаляется ранее убранный из favourites)
///
/// На усмотрение студента:
///        - Можно выполнить любую декомпозицию класса FavouriteCocktailsPage для внесения изменений в управление состоянием (рефакторинг)
///        - Можно выполнить любую декомпозицию класса CocktailDetailPage (CocktailTitle) для внесения изменений в управление состоянием (рефакторинг)
///        - Можно выполнить любую декомпозицию в самих классах управления состоянием приложения (store, block etc)
///        - Можно выполнить рефакторинг кнопки isFavourite, выделив ее в отдельный виджет и используя на обоих экранах
/// Мокап экрана Избранное (FavouriteCocktailsPage):
/// https://www.figma.com/file/UKHKopXpDy02I232c9mdwZ/%D0%9A%D0%BE%D0%BA%D1%82%D0%B5%D0%B9%D0%BB%D0%B8?node-id=24%3A441
///
/// В этом экране используется точно такая же  верстка, как и на экране фильтрации (то есть можно переиспользовать экран выдачи результатов по категориям)
///

class FavouriteCocktailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _cubit = BlocProvider.of<FavoritesCubit>(context);
    _cubit.fetchFavouritesCocktails();
    return ApplicationScaffold(
      title: 'Избранное',
      currentSelectedNavBarItem: 2,
      child: _buildCocktailItems(context),
    );
  }

  Widget _buildCocktailItems(BuildContext context) {
    return BlocBuilder<FavoritesCubit, FavoritesState>(
        builder: (context, state) {
      if (state is CocktailsLoadSuccess) {
        return GridView.builder(
          padding: const EdgeInsets.all(8.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: CocktailGridItem.aspectRatio,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              crossAxisCount: 2),
          itemCount: state.cocktails.length,
          itemBuilder: (context, index) {
            return CocktailGridItem(
              state.cocktails.elementAt(index),
            );
          },
        );
      }
      if (state is CocktailsLoadInProgress)
        return Center(
          child: CircularProgressIndicator(),
        );
      if (state is CocktailsLoadFailure)
        return Container(
          child: Center(child: Text(state.errorMessage)),
        );

      return Container(
        child: Center(child: Text('Ничего не добавлено')),
      );
    });
  }
}
