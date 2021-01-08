import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/models.dart';

class CocktailImage extends StatelessWidget {
  final Cocktail cocktail;

  CocktailImage(this.cocktail);

  @override
  Widget build(BuildContext context) {
    var image = Image.network(cocktail.drinkThumbUrl);
    return Stack(children: <Widget>[
      image,
      Container(
          child: image,
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [Color(0x00000000), Color(0xDD000000)]))),
      Row(children: [
        Expanded(
            child: Container(
                padding: EdgeInsets.fromLTRB(28, 38, 0, 0),
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration:
                        BoxDecoration(color: Color(0x55000000), borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.white,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  onTap: () {
                    navigateBack(context);
                  },
                ))),
        Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(0, 38, 19, 0),
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(color: Color(0x55000000), borderRadius: BorderRadius.all(Radius.circular(15))),
              child: SvgPicture.asset(
                "assets/logout.svg",
                width: 18,
                height: 18,
                color: Colors.white,
              ),
            ))
      ])
    ]);
  }

  void navigateBack(BuildContext context) {
    Navigator.of(context).pop(null);
  }
}
