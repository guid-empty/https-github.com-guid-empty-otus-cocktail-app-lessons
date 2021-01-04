import 'package:flutter/material.dart';

String mainFont = "SanFrancisco";

/* Colors */
Color mainBackColor = Color(0xFF201F2C);

Color deepDarkGray = Color(0xFF15151C);
Color darkGray = Color(0xFF181723);
Color gunPowder = Color(0xFF3B3953);

Color mainStrokeColor = Color(0xFF2D2C39);
Color searchStrokeColor = Color(0xFF464551);


TextStyle text10White = TextStyle(fontFamily: mainFont, fontSize: 10, color: Colors.white);
TextStyle text13White = TextStyle(fontFamily: mainFont, fontSize: 13, color: Colors.white);
TextStyle text14White = TextStyle(fontFamily: mainFont, fontSize: 14, color: Colors.white);
TextStyle text15White = TextStyle(fontFamily: mainFont, fontSize: 15, color: Colors.white);
TextStyle text18White = TextStyle(fontFamily: mainFont, fontSize: 18, color: Colors.white);

BoxDecoration tabActive = BoxDecoration(
    color: gunPowder,
    border: Border.all(color: mainStrokeColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(30))
);

BoxDecoration tabInactive = BoxDecoration(
    color: mainBackColor,
    border: Border.all(color: mainStrokeColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(30))
);

BoxDecoration searchText = BoxDecoration(
    color: darkGray,
    border: Border.all(color: mainStrokeColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(30))
);

BoxDecoration searchItem = BoxDecoration(
    color: darkGray,
    borderRadius: BorderRadius.all(Radius.circular(10))
);

BoxDecoration searchItemImage(String src) => BoxDecoration(
    color: darkGray,
    borderRadius: BorderRadius.all(Radius.circular(10)),
    image: DecorationImage(
      image: NetworkImage(src,),
      fit: BoxFit.cover
    )
);

BoxDecoration tabId = BoxDecoration(
    color: deepDarkGray,
    border: Border.all(color: mainStrokeColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(20))
);

