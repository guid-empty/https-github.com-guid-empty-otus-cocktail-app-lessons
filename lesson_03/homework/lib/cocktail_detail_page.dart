import 'package:flutter/material.dart';
import 'package:homework/app_custom_theme.provider.dart';
import 'package:homework/models/models.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CocktailDetailPage extends StatelessWidget {
  const CocktailDetailPage(
    this.cocktail, {
    Key key,
  }) : super(key: key);

  final Cocktail cocktail;

  Widget _buildCoctailPicture(BuildContext context) => Stack(
        //fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Image.network(
            cocktail.drinkThumbUrl,
            fit: BoxFit.cover,
          ),
          Positioned(
            child: SvgPicture.asset(
              'assets/images/left-arrow.svg',
              width: 20,
              height: 20,
            ),
            top: 26,
            left: 26,
          ),
          Positioned(
            child: SvgPicture.asset(
              'assets/images/2.svg',
              width: 20,
              height: 20,
            ),
            top: 26,
            right: 26,
          ),
        ],
      );

  Widget _buildMainParams(BuildContext buildContext) {
    final appCustomTheme =
        AppCustomThemeProvider.of(buildContext).appCustomTheme;

    Widget buildParam({paramName: String, paramValue: String}) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          paramName,
          style: TextStyle(
            color: Color(0xFFEAEAEA),
            fontSize: 14,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
          decoration: BoxDecoration(
            color: Color(0xFF15151C),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Text(
            paramValue,
            style: TextStyle(color: appCustomTheme.color1, fontSize: 15),
          ),
        ),
      ]);
    }

    return Container(
      padding: appCustomTheme.sectionPaddings,
      color: Color(0xff1A1927),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cocktail.name,
                style: TextStyle(
                  color: appCustomTheme.color1,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SvgPicture.asset(
                cocktail.isFavourite
                    ? 'assets/images/heart-fill.svg'
                    : 'assets/images/heart.svg',
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "id: ${cocktail.id}",
            style: TextStyle(
              color: Color(0xff848396),
              fontSize: 13,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildParam(
            paramName: 'Категория коктейля',
            paramValue: cocktail.category.value,
          ),
          SizedBox(
            height: 16,
          ),
          buildParam(
            paramName: 'Тип коктейля',
            paramValue: cocktail.cocktailType.value,
          ),
          SizedBox(
            height: 16,
          ),
          buildParam(
            paramName: 'Тип стекла',
            paramValue: cocktail.glassType.value,
          ),
        ],
      ),
    );
  }

  Widget _buildIngredients(BuildContext context) {
    final appCustomTheme = AppCustomThemeProvider.of(context).appCustomTheme;

    final List<TableRow> rows = cocktail.ingredients
        .map((ingredient) => TableRow(children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                child: Text(
                  ingredient.ingredientName,
                  style: TextStyle(
                      color: appCustomTheme.color1,
                      fontSize: 14,
                      decorationColor: appCustomTheme.color1,
                      decoration: TextDecoration.underline),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                child: Text(
                  ingredient.measure,
                  style: TextStyle(color: appCustomTheme.color1, fontSize: 14),
                  textAlign: TextAlign.right,
                ),
              )
            ]))
        .toList();

    return Container(
      padding: appCustomTheme.sectionPaddings,
      child: Column(children: [
        Text(
          'Ингридиенты:',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xffB1AFC6),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 16,
        ),
        Table(
          children: rows,
          defaultColumnWidth: FractionColumnWidth(.5),
        ),
      ]),
    );
  }

  Widget _buildRecipe(BuildContext context) {
    final appCustomTheme = AppCustomThemeProvider.of(context).appCustomTheme;

    return Container(
      padding: appCustomTheme.sectionPaddings,
      color: Color(0xff201F2C),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Инструкция для приготовления',
            style: TextStyle(color: appCustomTheme.color1, fontSize: 14),
          ),
          SizedBox(
            height: 24,
          ),
          Text(cocktail.instruction,
              style: TextStyle(color: appCustomTheme.color1, fontSize: 14))
        ],
      ),
    );
  }

  Widget _buildRating(BuildContext context) {
    final appCustomTheme = AppCustomThemeProvider.of(context).appCustomTheme;
    return Container(
      color: Color(0xff1A1927),
      padding: appCustomTheme.sectionPaddings,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        ...List.generate(
          5,
          (index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              decoration: BoxDecoration(
                  color: Color(0xff2A293A),
                  borderRadius: BorderRadius.circular(48)),
              child: Icon(
                Icons.star,
                color: (index + 1) > cocktail.rating
                    ? Color(0xff1A1927)
                    : Colors.white,
                size: 32,
              ),
              height: 48,
              width: 48,
            );
          },
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildCoctailPicture(context),
          _buildMainParams(context),
          _buildIngredients(context),
          _buildRecipe(context),
          _buildRating(context)
        ],
      ),
    );
  }
}
