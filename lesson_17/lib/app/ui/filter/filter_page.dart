import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_17/app/bloc_lib/categories/categories_bloc.dart';
import 'package:lesson_17/app/bloc_lib/categories/categories_events.dart';
import 'package:lesson_17/app/bloc_lib/categories/categories_states.dart';
import 'package:lesson_17/app/bloc_lib/cocktails/cocktails_bloc.dart';
import 'package:lesson_17/app/bloc_lib/cocktails/cocktails_states.dart';
import 'package:lesson_17/app/core/models.dart';
import 'package:provider/provider.dart';
import '../cocktails/cocktail_grid_item.dart';
import '../cocktails/cocktails_grid_delegate.dart';
import 'fitler_bar.dart';

class CocktailsFilterScreenCustomBlocStyle extends StatelessWidget {
  const CocktailsFilterScreenCustomBlocStyle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 21)),
            _buildFilterBar(context),
            SliverToBoxAdapter(child: SizedBox(height: 24)),
            _buildCocktailItems(context)
          ],
        ),
      ),
    );
  }

  Widget _buildFilterBar(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
        builder: (ctx, state) {
      if (state is CategoriesLoadSuccess) {
        return SliverPersistentHeader(
          delegate: CategoriesFilterBarDelegate(
            state.categories,
            onCategorySelected: (category) {
              context
                  .read<CategoriesBloc>()
                  .add(CategoriesCategorySelected(category));
            },
            selectedCategory: state.selectedCategory,
          ),
          floating: true,
        );
      }
      //todo inProgressState and ErrorState
      return SliverToBoxAdapter(
        child: Container(),
      );
    });
  }

  Widget _buildCocktailItems(BuildContext context) {
    final cocktailsBloc = Provider.of<CocktailsBloc>(context);
    return StreamBuilder<CocktailsState>(
        stream: cocktailsBloc.stream,
        initialData: cocktailsBloc.state,
        builder: (context, snapshot) {
          final state = snapshot.data;
          if (state is CocktailsLoadSuccess) {
            return _buildItems(state.cocktails);
          }
          //todo inProgressState and ErrorState
          return SliverToBoxAdapter(
            child: Container(),
          );
        });
  }

  Widget _buildItems(Iterable<CocktailDefinition> cocktails) {
    if (cocktails != null) {
      return SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate((ctx, index) {
              return CocktailGridItem(cocktails.elementAt(index));
            }, childCount: cocktails?.length ?? 0),
            gridDelegate: cocktailsGridDelegate),
      );
    }
    return SliverFillRemaining(child: const SizedBox());
  }
}
