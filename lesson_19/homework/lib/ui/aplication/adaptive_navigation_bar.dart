import 'package:cocktail_app/ui/pages/favorite_cocktails_page.dart';
import 'package:cocktail_app/ui/pages/filter_results_page.dart';
import 'package:cocktail_app/ui/pages/random_cocktail_page.dart';
import 'package:cocktail_app/ui/style/custom_colors.dart';
import 'package:cocktail_app/core/models.dart';
import 'package:flutter/material.dart';
import 'package:cocktail_app/ui/style/svg_icons.dart';

import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:cocktail_app/stores/cocktail_store.dart';

// TODO: убрать при полном переходе на MobX
final repository = AsyncCocktailRepository();

const appNavigationHeight = 73.0;

class ApplicationNavigationBar extends StatefulWidget {
  final int currentSelectedItem;

  const ApplicationNavigationBar({Key key, @required this.currentSelectedItem})
      : super(key: key);

  @override
  _ApplicationNavigationBarState createState() =>
      _ApplicationNavigationBarState(currentSelectedItem: currentSelectedItem);
}

class _ApplicationNavigationBarState extends State<ApplicationNavigationBar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _currentSelectedItem;

  _ApplicationNavigationBarState({@required int currentSelectedItem})
      : _currentSelectedItem = currentSelectedItem;

  @override
  Widget build(BuildContext context) {
    //обращение к стору, созданному на уровне приложения
    final store = Provider.of<CocktailStore>(context);

    return Material(
      color: CustomColors.background,
      child: TabBar(
        controller: _tabController,
        // в целях совместимости в Web: SvgIcons заменены на FontAwesome
        tabs: [
          Tab(
              icon: SvgIcons.cocktails(_currentSelectedItem == 0
                  ? CustomColors.active_tab
                  : CustomColors.inactive_tab),
              text: 'Коктейли'),
          Tab(
              icon: SvgIcons.myBar(_currentSelectedItem == 1
                  ? CustomColors.active_tab
                  : CustomColors.inactive_tab),
              text: 'Мой бар'),
          Tab(
              icon: SvgIcons.favorite(_currentSelectedItem == 2
                  ? CustomColors.active_tab
                  : CustomColors.inactive_tab),
              text: 'Избранное'),
          Tab(
              icon: SvgIcons.profile(_currentSelectedItem == 3
                  ? CustomColors.active_tab
                  : CustomColors.inactive_tab),
              text: 'Профиль'),
        ],
        onTap: (index) {
          if (index == 2 &&
              _tabController.previousIndex != _tabController.index) {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (context) => FavouriteCocktailsPage(),
              ),
            );
            // добавлена навигация в сетку коктейлей FilterResultsPageWidget
          } else if (index == 1 &&
              _tabController.previousIndex != _tabController.index) {
            store.fetchCocktails();
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (context) => FilterResultsPageWidget(
                    selectedCategory: store.currentCategory),
              ),
            );
            // добавлена навигация в random cocktail
          } else if (index == 0 &&
              _tabController.previousIndex != _tabController.index) {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (context) => RandomCocktailPageWidget(repository),
              ),
            );
          } else {
            setState(() {
              _currentSelectedItem = index;
            });
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        initialIndex: _currentSelectedItem, length: 4, vsync: this);
  }
}
