import 'package:cocktail/ui/common/app_colors.dart';
import 'package:cocktail/ui/common/style_const.dart';
import 'package:flutter/cupertino.dart';

class AppTextStyles {
  static const TextStyle categoryItemStyle = TextStyle(    
    fontSize: StyleConst.categoryItemFontSize,
    color: AppColors.categoryItemTextColor
  );

  static const RoundedRectangleBorder categoryBorder = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(StyleConst.categoryItemCornerRadius)),
    side: BorderSide(color: AppColors.categoryItemStrokeColor)
  );

  static const BoxDecoration idItemDecoration = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(StyleConst.categoryItemCornerRadius)),              
    shape: BoxShape.rectangle,
    color: AppColors.idItemBackgroundColor,
    border: Border(
      bottom: BorderSide(color: AppColors.idItemBorderColor),
      left: BorderSide(color: AppColors.idItemBorderColor),
      right: BorderSide(color: AppColors.idItemBorderColor),
      top: BorderSide(color: AppColors.idItemBorderColor)
    )                
  );
}