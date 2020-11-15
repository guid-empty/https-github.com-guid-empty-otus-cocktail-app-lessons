import 'package:cocktail/core/models.dart';
import 'package:flutter/material.dart';

class CocktailSliver extends StatelessWidget {
  static const double height = 215;
  static const double width = 160;
  final CocktailDefinition _cocktail;

  CocktailSliver(this._cocktail);

  @override
  Widget build(BuildContext context) {
    var image = Image.network(_cocktail.drinkThumbUrl,
        width: width, height: height, fit: BoxFit.cover);

    return Stack(children: <Widget>[
      ClipRRect(
        child: image,
        borderRadius: BorderRadius.circular(15),
      ),
      Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: Colors.white,
               borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                    0.0,
                    (height - 94) / height,
                    1.0
                  ],
                  colors: [
                    Color(0x00000000),
                    Color(0x61000000),
                    Color(0xD4000000)
                  ]))),
      Positioned(
          left: 16,
          top: 134,
          right: 16,
          child: Text(_cocktail.name.toString(),
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontFamily: "SF Pro Text"),
              maxLines: 2)),
      Positioned(left: 16, top: 175, child: IdWidget("id:${_cocktail.id}"))
    ]);
  }
}

class IdWidget extends StatelessWidget {
  final String _text;

  IdWidget(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 24,
        padding: EdgeInsets.fromLTRB(16, 6, 16, 6),
        decoration: BoxDecoration(
            color: Color(0xFF15151C),
            borderRadius: BorderRadius.all(Radius.circular(30)),
            border: Border.all(color: Color(0xFF211D22))),
        child: Text(
          _text,
          style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              // height: 12 / 10,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w400),
        ));
  }
}
