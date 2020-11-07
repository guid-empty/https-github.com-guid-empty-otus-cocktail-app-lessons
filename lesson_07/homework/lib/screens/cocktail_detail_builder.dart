import 'package:cocktail/core/src/repository/async_cocktail_repository.dart';
import 'package:flutter/material.dart';
import './cocktail_detail_page.dart';

class CocktailDetailBuilder extends StatefulWidget {
  final String cocktailId;

  const CocktailDetailBuilder({Key key, this.cocktailId}) : super(key: key);

  @override
  _CocktailDetailBuilderState createState() => _CocktailDetailBuilderState();
}

class _CocktailDetailBuilderState extends State<CocktailDetailBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future:
            AsyncCocktailRepository().fetchCocktailDetails(widget.cocktailId),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                'ошибка: ${snapshot.error.toString()}',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            );
          }

          if (snapshot.hasData) {
            return CocktailDetailPage(snapshot.data);
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
