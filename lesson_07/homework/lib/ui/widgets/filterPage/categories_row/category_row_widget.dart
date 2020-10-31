import 'dart:async';

import 'package:cocktail/core/models.dart';
import 'package:cocktail/network/model/callback_types.dart';
import 'package:cocktail/network/model/network_request_state.dart';
import 'package:cocktail/ui/common/app_colors.dart';
import 'package:cocktail/ui/common/app_spacing.dart';
import 'package:cocktail/ui/common/app_styles.dart';
import 'package:flutter/material.dart';

class CategoriesRowWidget extends StatefulWidget {

  final Stream<NetworkRequestState> _stream;
  final SelectCategoryCallback _callback;

  const CategoriesRowWidget(
    this._stream,
    this._callback
  );

  @override
  State<CategoriesRowWidget> createState() => _CategoriesRowWidgetState();
}

class _CategoriesRowWidgetState extends State<CategoriesRowWidget> {  
  int _requestState = NetworkRequestState.inIdleState;

  CocktailCategory _selectedCategory;  
  StreamSubscription _streamSubscription;

  @override
  void initState() {
    _streamSubscription = widget._stream.listen((event) {       
      _requestState = event.state;
    });
    super.initState();
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(      
      scrollDirection: Axis.horizontal,
      child:Row(
        children: _buildCategoriesItems()
      )
    );
  }

  List<Widget> _buildCategoriesItems() {
    return CocktailCategory.values.map<Widget>((category) {     
      return Padding(
        padding: AppSpacing.horizontalCategoryPadding,
        child: _buildCategoryButton(category)
      );     
    }).toList();
  }

  Widget _buildCategoryButton(CocktailCategory category) {
    return FlatButton(        
      shape: AppTextStyles.categoryBorder,
      color: _getBackColor(category),
      onPressed: () => _categoryButtonClick(category), 
      child: Text(                          
        category.value,          
        style: AppTextStyles.categoryItemStyle,
      )
    );
  }

  Color _getBackColor(CocktailCategory category) {
    return (_selectedCategory == category) ? AppColors.categoryItemSelectedColor : AppColors.categoryItemColor;
  }

  void _categoryButtonClick(CocktailCategory category) {
    if (_requestState == NetworkRequestState.inProgressState) return;

    widget._callback(category);
    setState(() {
      _selectedCategory = category;
    });
  }
}