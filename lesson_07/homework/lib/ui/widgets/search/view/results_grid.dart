import 'dart:async';

import 'package:cocktail/core/models.dart';
import 'package:cocktail/ui/widgets/common/future_builder_wrapper.dart';
import 'package:cocktail/ui/widgets/search/view_model/selected_category_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../assets.dart';
import 'cocktail_tile.dart';

class ResultsGrid extends StatefulWidget {
  ResultsGrid({
    Key key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<ResultsGrid> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: SelectedCategoryNotifier(),
        builder: (_, __) => FutureBuilderWrapper(
            future: fetchCocktailsByCategory(),
            inProgressBuilder: (BuildContext context) {
              return _InProgressWidget();
            },
            onErrorBuilder: (BuildContext context, Object error) {
              return _ErrorWidget(error.toString());
            },
            onDataBuilder:
                (BuildContext context, Iterable<CocktailDefinition> data) {
              return _TilesWidget(data);
            }));
  }

  Future<Iterable<CocktailDefinition>> fetchCocktailsByCategory() {
    return AsyncCocktailRepository()
        .fetchCocktailsByCocktailCategory(SelectedCategoryNotifier().category);
  }
}

class _InProgressWidget extends StatelessWidget {
  const _InProgressWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
        child: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.searchIcon,
              color: Theme.of(context).textTheme.headline6.color, width: 36),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 14, 0, 0),
            child:
                Text("Поиск...", style: Theme.of(context).textTheme.headline6),
          ),
        ],
      ),
    ));
  }
}

class _ErrorWidget extends StatelessWidget {
  final String _error;

  const _ErrorWidget(
    this._error, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
        child: Container(
      alignment: Alignment.center,
      child:
          Text(_error.toString(), style: Theme.of(context).textTheme.headline6),
    ));
  }
}

class _TilesWidget extends StatelessWidget {
  final Iterable<CocktailDefinition> data;

  const _TilesWidget(
    this.data, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(23, 0, 23, 0),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 6, crossAxisSpacing: 6),
        delegate:
            SliverChildListDelegate(data.map((e) => CocktailTile(e)).toList()),
      ),
    );
  }
}
