import 'package:cocktail/core/models.dart';
import 'package:cocktail/ui/common/app_colors.dart';
import 'package:cocktail/ui/common/app_spacing.dart';
import 'package:cocktail/ui/common/app_styles.dart';
import 'package:cocktail/ui/common/style_const.dart';
import 'package:flutter/material.dart';

class ResultsGridItemWidget extends StatelessWidget {
  final CocktailDefinition _cocktail;

  ResultsGridItemWidget(
    this._cocktail
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Stack(
        children: [
          _buildImage(),
          _buildGradient(),
          _buildText()
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),            
        shape: BoxShape.rectangle,
        image: DecorationImage(
          image: NetworkImage(_cocktail.drinkThumbUrl),
          fit: BoxFit.fitHeight
        )
      )
    );
  }

  Widget _buildGradient() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.0, 0.3),
          end: Alignment.bottomCenter,
          colors: [            
            AppColors.resultsitemGradientColor1,
            AppColors.resultsitemGradientColor2,
            AppColors.resultsitemGradientColor3
          ]
        )
      ),
    );
  }

  Widget _buildText() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,  
      crossAxisAlignment: CrossAxisAlignment.start,    
      children: [
        _buildNameText(),
        _buildIdText()  
      ],
    );
  }

  Widget _buildNameText() {
    return Padding(
      padding: AppSpacing.textNamePadding,
      child: Text(
        _cocktail.name,
        style: AppTextStyles.categoryItemStyle,
      )
    );
  }

  Widget _buildIdText() {
    return Padding(
      padding: AppSpacing.textIdPadding,
      child: Container(
        decoration: AppTextStyles.idItemDecoration,            
        child: Padding(
          padding: AppSpacing.textIdOvalPadding,
          child: Text(
            "id:${_cocktail.id}",
            style: TextStyle(
              color: AppColors.categoryItemTextColor,
              fontSize: StyleConst.idItemTextSize
            ),
          ),
        )
      )
    );
  }
}