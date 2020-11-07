import 'package:flutter/material.dart';
import 'package:homework/models/models.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CocktailDetailPage extends StatelessWidget {
  const CocktailDetailPage(
    this.cocktail, {
    Key key,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
              Container(
                color: Color(0xFF0E0D13),
                child: Image( image: AssetImage('assets/images/cocktail_7.png'))
              ),
              SafeArea(
                child: Stack(children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(30),
                      child: SvgPicture.asset('assets/images/icon_back.svg')
                  ),

                  Positioned(
                    top: 30,
                    right: 30,
                    child: SvgPicture.asset('assets/images/icon_out.svg')
                  )
                ])
              ),
            ]),
            Container(
              width: double.infinity,
              color: const Color(0xFF1A1927),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                    Text('Арбузный мохито', style: TextStyle(fontFamily: 'SanFrancisco', fontSize: 20, color: Colors.white), ),
                    SvgPicture.asset('assets/images/icon_hart.svg')
                  ]),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text('Id:12864', style: TextStyle(fontFamily: 'SanFrancisco', fontSize: 13, color: Color(0xFF848396)), ),
                  ),

                  _cocktailParamWidget('Категория коктейля'),
                  _tagWidget('Cocktail'),

                  _cocktailParamWidget('Тип коктейля'),
                  _tagWidget('Алкогольный'),

                  _cocktailParamWidget('Тип стекла'),
                  _tagWidget('Хайбол')
                ])
            ),
            Container(
              color: Colors.black,
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text('Ингредиенты:', style: TextStyle(fontFamily: 'SanFrancisco', fontSize: 16, color: Color(0xFFB1AFC6)), ),
                  ),
                  _ingredientWidget('Листья мяты', '4 шт'),
                  _ingredientWidget('Лайм', '½ шт'),
                  _ingredientWidget('Сахар', '1 ст. ложка'),
                  _ingredientWidget('Белый ром', '60 мл'),
                  _ingredientWidget('Лед', '½ стакана'),
                  _ingredientWidget('Мякоть арбуза', '120 г'),
                ],
              )
            ),
            Container(
                color: Color(0xFF201F2C),
                padding: EdgeInsets.fromLTRB(15, 30, 30, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, bottom: 20),
                      child: Text('Инструкция для приготовления', style: TextStyle(fontFamily: 'SanFrancisco', fontSize: 14, color: Color(0xFFB1AFC6)), ),
                    ),
                    _cookStageWidget('В большом бокале смешайте порванные листья мяты, разрезанный на кусочки лайм и сахар. Толкушкой хорошо раздавите, чтобы лайм пустил сок.'),
                    _cookStageWidget('Добавьте мелко нарезанную кубиками мякоть арбуза и снова слегка растолките.'),
                    _cookStageWidget('Добавьте ром и лед. Перемешайте и разлейте по бокалам. Сразу подавайте.'),
                  ],
                )
            ),
            Container(
              color: const Color(0xFF1A1927),
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  5, (index) =>
                    Container(
                    margin: const EdgeInsets.all(5),
                    child:
                      (() {
                        if ( index < 3 )
                          return Image(image: AssetImage('assets/images/star_active.png'),);
                        else
                          return Image(image: AssetImage('assets/images/star_default.png'),);
                      })()
                    )
                ),
              )
            )
          ],
        ),
      ),
    );
  }

  Widget _tagWidget(String text) =>
    Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
      decoration: BoxDecoration(
          color: Color(0xFF15151C),
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Text(text, style: TextStyle(fontFamily: 'SanFrancisco', fontSize: 15, color: Colors.white), ),
    );

  Widget _cocktailParamWidget(String text) =>
    Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: Text(text, style: TextStyle(fontFamily: 'SanFrancisco', fontSize: 14, color: Color(0xFFEAEAEA)), ),
    );

  Widget _ingredientWidget(String name, String value) => Container(
    margin: EdgeInsets.only(top: 7, bottom: 7),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
        Text(name, style: TextStyle(fontFamily: 'SanFrancisco', fontSize: 14, color: Colors.white, decoration: TextDecoration.underline), ),
        Text(value, style: TextStyle(fontFamily: 'SanFrancisco', fontSize: 14, color: Colors.white), ),
      ])
  );

  Widget _cookStageWidget(String text) => Container(
    margin: EdgeInsets.only(top: 10, bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Flexible(
          flex: 0,
          child: Container(
            width: 5,
            height: 5,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            width: double.infinity,
            child: Text(text, style: TextStyle(fontFamily: 'SanFrancisco', fontSize: 14, color: Colors.white), ),
          ),
        ),
      ])
);
}
