import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:homework/components/components.dart';
import 'package:homework/models/models.dart';

class CocktailDetailPage extends StatelessWidget {
  final Cocktail cocktail;

  const CocktailDetailPage(
    this.cocktail, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // debugPrint(this.cocktail.toString() this.cocktail.cocktailType);
    return Scaffold(
        extendBodyBehindAppBar:true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => {},
          ),
          actions: <Widget>[
            IconButton(
              icon: iconShare,
              onPressed: () {},
              tooltip: 'Share',
            ),
          ],
        ),
        body: Stack(
      children: [
        SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              color: Color(0xff0E0D13),
              child: Image.network(cocktail.drinkThumbUrl),
              foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin : Alignment.topCenter,
                      end:Alignment.bottomCenter,
                      colors: [Color.fromARGB(0,14, 13, 19), Color(0xff0E0D13)])
              ) ,
            ),
            this._buildDescription(),
            this._buildIngredients(),
            this._buildInstructions(),
            this._buildRatio()
          ]),
        ),
      ],
    ));
  }

  static Widget _buildDescriptionItem(title, text) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        margin: EdgeInsets.only(top: 20),
        child: Text(title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400)),
      ),
      Container(
        padding: EdgeInsets.fromLTRB(16, 6, 16, 6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Color(0xff15151C)),
        margin: EdgeInsets.only(top: 8),
        child: Text(text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400)),
      )
    ]);
  }

  static Widget _buildIngredientItem(name, measure) {
    return Container(
        margin: EdgeInsets.only(top: 16),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w400)),
              Text(measure,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400))
            ]));
  }

  Widget _buildDescription() {
    return Container(
      color: Color(0xff1A1927),
      padding: EdgeInsets.fromLTRB(32, 33, 34, 24),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(this.cocktail.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              iconLike
            ]),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text('id:${this.cocktail.id}',
              style: TextStyle(
                  color: Color(0xff848396),
                  fontSize: 13,
                  fontWeight: FontWeight.w400)),
        ),
        CocktailDetailPage._buildDescriptionItem(
            'Категория коктейля', this.cocktail.category.value),
        CocktailDetailPage._buildDescriptionItem(
            'Тип коктейля', this.cocktail.cocktailType.value),
        CocktailDetailPage._buildDescriptionItem(
            'Тип стекла', this.cocktail.glassType.value),
      ]),
    );
  }

  Widget _buildIngredients() {
    return Container(
        color: Colors.black,
        padding: EdgeInsets.fromLTRB(24, 32, 36, 24),
        child: Column(children: [
          Text(
            'Ингридиенты:',
            style: TextStyle(
                color: Color(0xff848396),
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          Container(
              margin: EdgeInsets.only(top: 8),
              child: Column(
                  children: cocktail.ingredients
                      .map((ingredient) =>
                          CocktailDetailPage._buildIngredientItem(
                              ingredient.ingredientName,
                              ingredient.ingredientName))
                      .toList()))
        ]));
  }

  Widget _buildInstructions() {
    return Container(
      color: Color(0xff201F2C),
      padding: EdgeInsets.fromLTRB(32, 24, 26, 40),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Инструкция для приготовления',
            style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                height: 1.2,
                fontWeight: FontWeight.normal)),
        Container(
            margin: EdgeInsets.only(top: 24),
            child: MarkdownBody(
              data: this.cocktail.instruction,
              styleSheet: MarkdownStyleSheet(
                listBullet: TextStyle(color: Colors.white),
                p: TextStyle(color: Colors.white, fontSize: 14, height: 1.2),
              ),
            ))
      ]),
    );
  }

  // Пока что виджет строится без данных и его можно было бы сделать статичным
  Widget _buildRatio() {
    return Container(
        color: Color(0xff1A1927),
        padding: EdgeInsets.fromLTRB(35, 24, 36, 24),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              iconStarred,
              iconStarred,
              iconStarred,
              iconNotStarred,
              iconNotStarred
            ]));
  }
}
