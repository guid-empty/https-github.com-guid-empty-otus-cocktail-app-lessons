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
            top: 26,
            left: 26,
            child: SvgPicture.asset(
              'assets/images/left-arrow.svg',
              width: 20,
              height: 20,
            ),
          ),
          Positioned(
            top: 26,
            right: 26,
            child: SvgPicture.asset(
              'assets/images/2.svg',
              width: 20,
              height: 20,
            ),
          ),
        ],
      );

  Widget _buildMainParams(BuildContext buildContext) {
    final appCustomTheme =
        AppCustomThemeProvider.of(buildContext).appCustomTheme;

    Widget buildParam(
        {@required String paramName, @required String paramValue}) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          paramName,
          style: const TextStyle(
            color: const Color(0xFFEAEAEA),
            fontSize: 14,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
          decoration: const BoxDecoration(
            color: const Color(0xFF15151C),
            borderRadius: const BorderRadius.all(
              const Radius.circular(30),
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
      padding: appCustomTheme.sectionPadding,
      color: appCustomTheme.color2,
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
            style: const TextStyle(
              color: const Color(0xff848396),
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

    final rows = cocktail.ingredients
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
      padding: appCustomTheme.sectionPadding,
      child: Column(children: [
        Text(
          'Ингридиенты:',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: const Color(0xffB1AFC6),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Table(
          defaultColumnWidth: const FractionColumnWidth(.5),
          children: rows,
        ),
      ]),
    );
  }

  Widget _buildRecipe(BuildContext context) {
    final appCustomTheme = AppCustomThemeProvider.of(context).appCustomTheme;

    return Container(
      padding: appCustomTheme.sectionPadding,
      color: const Color(0xff201F2C),
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
      color: appCustomTheme.color2,
      padding: appCustomTheme.sectionPadding,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        ...List.generate(
          5,
          (index) => Flexible(
            child: Container(
              height: 48,
              width: 48,
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              decoration: const BoxDecoration(
                color: const Color(0xff2A293A),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.star,
                color: (index + 1) > cocktail.rating
                    ? appCustomTheme.color2
                    : Colors.white,
                size: 32,
              ),
            ),
          ),
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
