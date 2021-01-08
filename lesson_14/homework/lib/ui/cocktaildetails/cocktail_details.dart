import 'package:flutter/material.dart';
import 'package:homework/core/models.dart';

import '../coctail_detail_page.dart';

class CocktailDetails extends StatelessWidget {
  final Cocktail cocktail;
  final String fontFamily;

  CocktailDetails(this.cocktail, this.fontFamily);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(children: [
              Expanded(
                  child: Text(cocktail.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: fontFamily))),
              Container(
                  padding: EdgeInsets.only(right: 24),
                  child: AnimatedFavourite())
            ]),
            SizedBox(height: 10),
            Text("id:${cocktail.id}",
                style: TextStyle(
                    color: Color(0xFF848396),
                    fontSize: 13,
                    fontFamily: CocktailDetailPage.MAIN_FONT)),
            ..._createCocktailDetailsEntry(
                "Категория коктейля", cocktail.category.value),
            ..._createCocktailDetailsEntry(
                "Тип коктейля", cocktail.cocktailType.value),
            ..._createCocktailDetailsEntry(
                "Тип стекла", cocktail.glassType.value),
          ]),
      color: Color(0xFF1A1927),
      padding: EdgeInsets.fromLTRB(32, 33, 0, 0),
      width: double.infinity,
      height: 300,
    );
  }

  List<Widget> _createCocktailDetailsEntry(
      String sectionName, String sectionContent) {
    var res = List<Widget>();
    res.add(SizedBox(height: 20));
    res.add(
      Text(sectionName,
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontFamily: fontFamily)),
    );
    res.add(SizedBox(height: 8));
    res.add(Container(
        padding: EdgeInsets.fromLTRB(18, 6, 18, 6),
        decoration: BoxDecoration(
            color: Color(0xFF15151C),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Text(sectionContent,
            style: TextStyle(
                color: Colors.white, fontSize: 13, fontFamily: fontFamily))));
    return res;
  }


}

class AnimatedFavourite extends StatefulWidget{

  @override
  _AnimatedFavouriteState createState() => _AnimatedFavouriteState();
}

class _AnimatedFavouriteState extends State<AnimatedFavourite> with TickerProviderStateMixin{
  AnimationController _controller;
  Animation<double> _animation;
  bool _selected = true;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync:  this , duration:  new Duration(milliseconds: 300));
    _animation = TweenSequence<double>([
      TweenSequenceItem<double>(tween: Tween<double>(begin: 20.0, end: 28.0), weight: 30),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 30.0, end: 25.0), weight: 20),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 25.0, end: 28.0), weight: 20),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 30.0, end: 20.0), weight: 30),
    ]).animate(_controller);

    _controller.addListener(() {
      setState(() {});
    });
    _controller.addStatusListener(_handleAnimationStatusChange);
  }


  @override
  Widget build(BuildContext context) {
      return GestureDetector(
          child: Stack(children: <Widget>[
            Container(width: 29, height: 29, color: Color(0x00000000),),
            Icon(Icons.favorite, color: Colors.white, size: _animation.value),
            if(!_selected) Positioned(
                left: 2, top: 2,
                child: Icon(Icons.favorite, color: Color(0xFF1A1927), size: _animation.value-4)
            ),
          ]),
          onTap: () {
            _controller.forward();
          },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super .dispose();
  }

  void _handleAnimationStatusChange(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _controller.reset();
      setState(() => _selected = !_selected);
    }
  }
}
