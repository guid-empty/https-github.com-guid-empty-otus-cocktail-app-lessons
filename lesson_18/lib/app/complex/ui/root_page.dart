import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../core/models.dart';
import '../redux/cocktails/thunk.dart';
import '../redux/state.dart';
import 'cocktails/cocktail_grid_item.dart';
import 'cocktails/cocktails_grid_delegate.dart';
import 'cocktails/favorites_page.dart';
import 'cocktails/fitler_bar.dart';
import 'view_models/categories.dart';
import 'view_models/cocktails.dart';

class RootPage extends StatefulWidget {
  final Store<AppState> _store;

  const RootPage(
    this._store, {
    Key key,
  }) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;

  final _pages = [
    CocktailsFilterScreen(),
    FavoritesPage(),
  ];

  final _tabs = [
    BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Поиск'),
    BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Избранное'),
  ];

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: widget._store,
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: _tabs,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

class CocktailsFilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Коктейли'),
      ),
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
    final store = StoreProvider.of<AppState>(context);

    return StoreConnector<AppState, CategoriesViewModel>(
      onInit: (store) => store.dispatch(OnSelectCocktailCategory(
          store.state.categoriesState.selectedCategory)),
      converter: (store) => store.state.categoriesState.categories.isNotEmpty
          ? CategoriesViewModel.success(
              categories: store.state.categoriesState.categories,
              selectedCategory: store.state.categoriesState.selectedCategory)
          : CategoriesViewModel.loading(),
      builder: (context, vm) => vm.when(
        loading: () => SliverToBoxAdapter(
          child: Container(),
        ),
        success: (categories, selectedCategory) => SliverPersistentHeader(
          delegate: CategoriesFilterBarDelegate(
            categories,
            onCategorySelected: (category) =>
                store.dispatch(OnSelectCocktailCategory(category)),
            selectedCategory: selectedCategory,
          ),
          floating: true,
        ),
      ),
    );
  }

  Widget _buildCocktailItems(BuildContext context) {
    return StoreConnector<AppState, CocktailsViewModel>(
      converter: (store) => store.state.cocktailsState.cocktails.isNotEmpty
          ? CocktailsViewModel.success(
              cocktails: store.state.cocktailsState.cocktails)
          : CocktailsViewModel.loading(),
      builder: (context, vm) => vm.when(
        loading: () => SliverToBoxAdapter(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        success: (cocktails) => _buildItems(cocktails),
      ),
    );
  }

  Widget _buildItems(Iterable<CocktailDefinition> cocktails) {
    if (cocktails != null) {
      return SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        sliver: SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (ctx, index) => CocktailGridItem(cocktails.elementAt(index)),
            childCount: cocktails?.length ?? 0,
          ),
          gridDelegate: cocktailsGridDelegate,
        ),
      );
    }
    return SliverFillRemaining(
      child: const SizedBox(),
    );
  }
}
