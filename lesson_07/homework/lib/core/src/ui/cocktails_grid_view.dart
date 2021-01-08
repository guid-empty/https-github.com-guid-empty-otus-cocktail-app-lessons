import 'dart:math';

import 'package:cocktail/core/models.dart';
import 'package:cocktail/core/src/ui/cocktail_sliver.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class CocktailsGridView extends StatelessWidget {
  final Future<Iterable<CocktailDefinition>> _cocktailsLoader;

  CocktailsGridView(this._cocktailsLoader);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Iterable<CocktailDefinition>>(
        future: _cocktailsLoader,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Ошибка загрузки: ${snapshot.error}",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 20,
                        style: TextStyle(
                            fontSize: 14, color: Colors.white, fontFamily: "SF Pro Text", fontWeight: FontWeight.w400),
                      )));
            } else {
              return Expanded(
                  child: Container(
                      padding: EdgeInsets.fromLTRB(26, 0, 13, 0),
                      child: CustomScrollView(slivers: <Widget>[
                        SliverGrid(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 6,
                              crossAxisSpacing: 3,
                              childAspectRatio: CocktailSliver.width / CocktailSliver.height),
                          delegate: SliverChildBuilderDelegate((buildContext, index) {
                            return CocktailSliver(snapshot.data.elementAt(index));
                          }, childCount: snapshot.data.length),
                        )
                      ])));
            }
          } else {
            return Expanded(child: AnimatedProgressLoader());
          }
        });
  }
}

class AnimatedProgressLoader extends StatefulWidget {
  @override
  _AnimatedProgressLoaderState createState() => _AnimatedProgressLoaderState();
}

class _AnimatedProgressLoaderState extends State<AnimatedProgressLoader> with TickerProviderStateMixin {
  AnimationController _controller;
  var _tween = Tween<double>(begin: 0.0, end: 1.0);
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(duration: const Duration(milliseconds: 1000), vsync: this);
    _controller.repeat(reverse: false);
    _controller.addListener(() {
      setState(() {});
    });

    _animation = _tween.animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 40,
        width: 100,
        child: LiquidLinearProgressIndicator(
            value: _animation.value,
            backgroundColor: Colors.black,
            valueColor: AlwaysStoppedAnimation(Colors.redAccent),
            borderWidth: 4,
            borderColor: Colors.white,
            borderRadius: 5,
            center: Text("Loading...")),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
