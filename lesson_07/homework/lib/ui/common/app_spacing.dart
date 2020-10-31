import 'package:cocktail/ui/common/style_const.dart';
import 'package:flutter/material.dart';

class AppSpacing {
  static const horizontalCategoryPadding = EdgeInsets.symmetric(horizontal: StyleConst.categoryHorizontalInsetSize);

  static const resultsGridPadding = EdgeInsets.symmetric(
    horizontal: StyleConst.resultsGridHorizontalPadding,
    vertical: StyleConst.resultsGridVerticalPadding
  );

  static const textNamePadding = EdgeInsets.fromLTRB(
    StyleConst.itemNameVerticalPadding, 
    StyleConst.itemNameTopPadding,
    StyleConst.itemNameVerticalPadding, 
    StyleConst.itemNameBottomPadding
  );

  static const textIdPadding = EdgeInsets.fromLTRB(
    StyleConst.itemNameVerticalPadding, 
    StyleConst.itemNameTopPadding,
    StyleConst.itemNameTopPadding, 
    StyleConst.itemNameBottomPadding
  );

  static const textIdOvalPadding = EdgeInsets.symmetric(
    vertical: StyleConst.itemNameBottomPadding, 
    horizontal: StyleConst.itemNameVerticalPadding
  );
}