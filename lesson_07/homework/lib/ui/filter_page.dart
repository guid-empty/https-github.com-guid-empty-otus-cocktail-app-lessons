import 'package:cocktail/core/models.dart';

import 'package:flutter/material.dart';

import './classes/header_delegate.dart';

import './widgets/coctail_category_list.dart';
import './widgets/coctail_preview.dart';
import './widgets/custom_loader.dart';
import './filter_service.dart';
import './theme.dart';

class CocktailsFilterScreen extends StatefulWidget {
  @override
  _CocktailsFilterScreenState createState() => _CocktailsFilterScreenState();
}

class _CocktailsFilterScreenState extends State<CocktailsFilterScreen> {
  final _filterService = FilterService.single();

  final _headerHeight = 152.0;

  Widget _buildSearchTextField() {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(
        horizontal: 13,
        vertical: 0,
      ),
      margin: const EdgeInsets.only(bottom: 22),
      child: TextField(
        controller: _filterService.searchInCategoryCtrl,
        focusNode: _filterService.searchFiledFocus,
        obscureText: false,
        onChanged: (text) {
          _filterService.categoryFilterValue$$.add(text);
        },
        decoration: InputDecoration(
          labelText: 'Поиск в категории',
          floatingLabelBehavior: FloatingLabelBehavior.never,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
            size: 20,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.clear,
              color: const Color(0xff999999),
              size: 8,
            ),
            onPressed: () {
              _filterService.clearSearchInCategoryTextField();
            },
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryList() {
    return StreamBuilder<CocktailCategory>(
      stream: _filterService.activeCategory$$,
      builder: (context, snapshot) {
        return CoctailCategoryList(
          activeCategory: snapshot.data,
        );
      },
    );
  }

  Widget _buildCoctailsGrid() {
    return StreamBuilder<Iterable<CocktailDefinition>>(
      stream: _filterService.filteredSelectedCategoryItems$,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 26,
              vertical: 22,
            ),
            sliver: SliverGrid(
              delegate: SliverChildListDelegate(
                snapshot.data
                    .map(
                      (coctailDefenition) => CoctailPreview(coctailDefenition),
                    )
                    .toList(),
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 170 / 215,
              ),
            ),
          );
        }

        if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height - _headerHeight,
              child: Center(
                child: Text(
                  snapshot.error.toString(),
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            ),
          );
        }

        return SliverToBoxAdapter(
          child: Container(
            height: MediaQuery.of(context).size.height - _headerHeight,
            child: Center(
              child: CustomLoader('Поиск'),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: filterPageThemeData,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                floating: true,
                pinned: false,
                delegate: HeaderDelegate(
                  color: Colors.black,
                  height: _headerHeight,
                  child: Column(
                    children: [
                      _buildSearchTextField(),
                      _buildCategoryList(),
                    ],
                  ),
                ),
              ),
              _buildCoctailsGrid()
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _filterService.dispose();
    super.dispose();
  }
}
