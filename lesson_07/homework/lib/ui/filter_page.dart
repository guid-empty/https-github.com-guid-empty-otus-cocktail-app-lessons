import 'package:cocktail/core/models.dart';
import 'package:cocktail/network/cocktail_category_filter_request.dart';
import 'package:cocktail/ui/common/app_colors.dart';
import 'package:cocktail/ui/widgets/filterPage/category_filter_results_widget.dart';
import 'package:cocktail/ui/widgets/filterPage/categories_row/category_row_widget.dart';
import 'package:flutter/material.dart';

class CocktailsFilterScreen extends StatelessWidget {  
  final CategoryFilterRequest _categoryFilterRequest = CategoryFilterRequest();

  @override
  Widget build(BuildContext context) {    
    return Container(
      decoration: AppColors.filterBackgroundDecoration,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            CategoriesRowWidget(
              _categoryFilterRequest.requestUpdates,
              _onCategoryClick
            ),
            CategoryFilterResultsWidget(
              _categoryFilterRequest.requestUpdates
            )
          ]
        ) 
      )
    );        
  }

  void _onCategoryClick(CocktailCategory category) {
      _categoryFilterRequest.requestCocktailsByCategory(category);
  }
}
