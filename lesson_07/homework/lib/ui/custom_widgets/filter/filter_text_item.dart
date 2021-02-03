import 'dart:async';

import 'package:cocktail/core/models.dart';
import 'package:cocktail/ui/custom_colors/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterTextItem extends StatelessWidget {
  final String category;
  final bool isSelected;

  FilterTextItem({this.category, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _getColor(),
        border: Border.all(color: _getBorderSideColor()),
        borderRadius: BorderRadius.circular(30.0)
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(category,
              style: Theme.of(context).textTheme.headline4),
        ),
      ),
    );
  }

  Color _getColor() {
    if (isSelected) {
      return CustomColors.filter_item_2;
    } else {
      return CustomColors.filter_item_1;
    }
  }

  _getBorderSideColor() {
    if (isSelected) {
      return CustomColors.filter_item_2;
    } else {
      return CustomColors.border;
    }
  }
}
