import 'package:cocktail/core/models.dart';
import 'package:cocktail/ui/common/app_spacing.dart';
import 'package:cocktail/ui/widgets/filterPage/results_grid/results_grid_item.dart';
import 'package:flutter/material.dart';

class CategoryResultsGrid extends StatelessWidget {
  final List<CocktailDefinition> _cocktails;

  CategoryResultsGrid(
    this._cocktails
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(  
      child: CustomScrollView(        
        slivers: [
          SliverPadding(
            padding: AppSpacing.resultsGridPadding,
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              delegate: SliverChildBuilderDelegate(
                _buildCurrentItem,
                childCount: _cocktails.length
              )           
            )
          )        
        ]
      )
    );
  }

  Widget _buildCurrentItem(BuildContext context, int index) {
    CocktailDefinition item = _cocktails[index];    
    return ResultsGridItemWidget(item);
  }
}