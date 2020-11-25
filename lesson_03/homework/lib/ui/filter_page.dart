import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/events/category_filter_events.dart';
import 'package:homework/ui/custom_widgets/custom_progress/progress_loader.dart';

import 'colors/custom_colors.dart';
import 'custom_widgets/cocktail_card/cocktail_card.dart';
import 'custom_widgets/custom_sliver/cocktail_header_sliver_delegate.dart';
import 'custom_widgets/search_row/search_row.dart';

class CocktailsFilterScreen extends StatefulWidget {
  @override
  State createState() => _CocktailsFilterScreenState();
}

class _CocktailsFilterScreenState extends State<CocktailsFilterScreen> {
  final cocktailsController = StreamController<dynamic>.broadcast();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.background,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: SearchRow(),
        ),
        body: StreamBuilder<Object>(
            stream: cocktailsController.stream.where((event) => event is Event),
            builder: (context, snapshot) {
              return CustomScrollView(
                slivers: [
                  SliverPersistentHeader(
                    floating: true,
                    pinned: true,
                    delegate: CocktailsCategoriesList(
                        cocktailsController: cocktailsController,
                        height: 70,
                        openHeight: 70),
                  ),
                  _streamBuilder(context, snapshot)
                ],
              );
            }));
  }

  Widget _loading(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: MediaQuery.of(context).size.height - 180,
        child: Center(
          child: ProgressLoader(),
        ),
      ),
    );
  }

  Widget _error(BuildContext context, String error) {
    return SliverToBoxAdapter(
      child: Container(
        height: MediaQuery.of(context).size.height - 180,
        child: Center(
          child: Material(
              color: Colors.transparent,
              child: Text(
                error,
                style: Theme.of(context).textTheme.headline5,
              )),
        ),
      ),
    );
  }

  Widget _streamBuilder(BuildContext context, AsyncSnapshot snapshot) {
    if (snapshot.hasError) {
      return _error(context, snapshot.error);
    } else if (snapshot.hasData) {
      if (snapshot.data is SuccessEvent) {
        var cocktails = (snapshot.data as SuccessEvent).value;
        return SliverPadding(
          padding: const EdgeInsets.only(left: 22, right: 22, bottom: 22),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 3.0,
                crossAxisSpacing: 3.0,
                childAspectRatio: 0.8),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return CocktailCard(
                  cocktail: cocktails[index],
                );
              },
              childCount: cocktails.length,
            ),
          ),
        );
      } else if (snapshot.data is Loading) {
        return _loading(context);
      } else {
        return _error(context, (snapshot.data as Error).message);
      }
    } else {
      return _error(context, 'Unknown error');
    }
  }

  @override
  void dispose() {
    cocktailsController.close();
    super.dispose();
  }
}
