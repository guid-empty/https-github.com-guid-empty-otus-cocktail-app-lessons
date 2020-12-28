import 'package:flutter/material.dart';

class AppColors {
  static const Color categoryItemTextColor = Color(0xFFFFFFFF);
  static const Color categoryItemColor = Color(0xFF201F2C);
  static const Color categoryItemSelectedColor = Color(0xFF3B3953);
  static const Color categoryItemStrokeColor = Color(0xFF2D2C39);


  static const Color backGradientColor1 = Color(0xFF1A1927);
  static const Color backGradientColor2 = Color(0xFF0B0B12);
  static const Color backGradientColor3 = Color(0xFF1A1926);

  static const Color resultsitemGradientColor1 = Color(0x00000000);
  static const Color resultsitemGradientColor2 = Color(0x80000000);
  static const Color resultsitemGradientColor3 = Color(0xFF000000);

  static const Color idItemBorderColor = Color(0xFF211D22);
  static const Color idItemBackgroundColor = Color(0xFF15151C);

  static const LinearGradient filterBackgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      backGradientColor1,
      backGradientColor2,
      backGradientColor3,
    ]          
  );

  static const BoxDecoration filterBackgroundDecoration = BoxDecoration(
    gradient: filterBackgroundGradient
  );
}