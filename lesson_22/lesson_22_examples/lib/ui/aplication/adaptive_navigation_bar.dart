import 'package:cocktail_app/ui/style/custom_colors.dart';
import 'package:cocktail_app/ui/style/svg_icons.dart';
import 'package:flutter/material.dart';

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
  Widget build(BuildContext context) => Material(
        color: CustomColors.background,
        child: TabBar(
          controller: _tabController,
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
            setState(() {
              _currentSelectedItem = index;
            });
          },
        ),
      );

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
