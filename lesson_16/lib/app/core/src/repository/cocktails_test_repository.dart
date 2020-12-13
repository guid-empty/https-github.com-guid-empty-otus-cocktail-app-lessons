import 'dart:math';


import 'package:lesson_16/app/repository/cocktail_repository.dart';

import '../../models.dart';

class CocktailTestRepository extends CocktailRepository {
  @override
  Future<Cocktail> fetchCocktailDetails(String id) async {
    return _cocktails.firstWhere((element) => element.id == id,
        orElse: () => throw ('Коктейль не найден'));
  }

  @override
  Future<Iterable<CocktailDefinition>> fetchCocktailsByCocktailCategory(
      CocktailCategory category) async {
    return _cocktails
        .where((element) => element.category.value == category.value)
        .map((e) => CocktailDefinition.fromCocktail(e))
        .toList();
  }

  @override
  Future<Iterable<CocktailDefinition>> fetchCocktailsByCocktailType(
      CocktailType cocktailType) async {
    return _cocktails
        .where((element) => element.cocktailType.value == cocktailType.value)
        .map((e) => CocktailDefinition.fromCocktail(e))
        .toList();
  }

  @override
  Future<Cocktail> getRandomCocktail() async {
    final randomIndex = Random().nextInt(_cocktails.length - 1);
    return _cocktails.elementAt(randomIndex);
  }

  @override
  Future<Iterable<Cocktail>> fetchPopularCocktails() async {
    return _cocktails.where((element) => element.isFavourite == true).toList();
  }

  @override
  Future<Iterable<CocktailCategory>> getCategories() async {
    return CocktailCategory.values;
  }
}

final _cocktails = [
  Cocktail(
    id: '15092',
    category: CocktailCategory.ordinaryDrink,
    cocktailType: CocktailType.nonAlcoholic,
    glassType: GlassType.collinsGlass,
    instruction: '''
                      Shake with ice.
                    ''',
    isFavourite: true,
    name: 'Pysch Vitamin Light',
    ingredients: [
      IngredientDefinition('Orange juice', '1 part '),
      IngredientDefinition('Apple juice', '1 part '),
      IngredientDefinition('Pineapple juice', '1 part '),
      IngredientDefinition('Ice', 'null'),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/xsqsxw1441553580.jpg',
  ),
  Cocktail(
    id: '12630',
    category: CocktailCategory.cocktail,
    cocktailType: CocktailType.nonAlcoholic,
    glassType: GlassType.highballGlass,
    instruction: '''
                      Mix sugar syrup with lemon juice in a tall glass. Fill up with ginger ale.
                    ''',
    isFavourite: true,
    name: 'Rail Splitter',
    ingredients: [
      IngredientDefinition('Sugar syrup', '2 tsp '),
      IngredientDefinition('Lemon juice', 'null'),
      IngredientDefinition('Ginger ale', 'null'),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/stsuqq1441207660.jpg',
  ),
  Cocktail(
    id: '12750',
    category: CocktailCategory.cocoa,
    cocktailType: CocktailType.nonAlcoholic,
    glassType: GlassType.coffeeMug,
    instruction: '''
                      Stir the milk with the chocolate and the cinnamon over low heat until the chocolate dissolves. Add the eggs and beat the mixture until it becomes thick, taking care not to boil. Serve in coffee mug.
                    ''',
    isFavourite: true,
    name: 'Spanish chocolate',
    ingredients: [
      IngredientDefinition('Milk', '2 cups '),
      IngredientDefinition('Chocolate', '2 oz sweet '),
      IngredientDefinition('Cinnamon', '1/2 tsp '),
      IngredientDefinition('Egg yolk', '2 beaten '),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/pra8vt1487603054.jpg',
  ),
  Cocktail(
    id: '13032',
    category: CocktailCategory.punchPartyDrink,
    cocktailType: CocktailType.nonAlcoholic,
    glassType: GlassType.collinsGlass,
    instruction: '''
                      Combine peach nectar, orange juice and brown sugar in a large saucepan. Tie cinnamon and cloves in a small cheesecloth bag. Drop into saucepan. Heat slowly, stirring constantly, until sugar dissolves. Simmer 10 minutes. Stir in lime juice. Serve in hot mugs.
                    ''',
    isFavourite: true,
    name: 'Spiced Peach Punch',
    ingredients: [
      IngredientDefinition('Peach nectar', '46 oz '),
      IngredientDefinition('Orange juice', '20 oz '),
      IngredientDefinition('Brown sugar', '1/2 cup '),
      IngredientDefinition('Cinnamon', '3 3-inch '),
      IngredientDefinition('Cloves', '1/2 tsp '),
      IngredientDefinition('Lime juice', '2 tblsp '),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/qxvypq1468924331.jpg',
  ),
  Cocktail(
    id: '12780',
    category: CocktailCategory.coffeeTea,
    cocktailType: CocktailType.nonAlcoholic,
    glassType: GlassType.coffeeMug,
    instruction: '''
                      Incidentally, a pinch of cinnamon is indeed a nice addition to coffee but true heaven is a cardamom seed. Of course, you serve it in a coffee mug.
                    ''',
    isFavourite: true,
    name: 'Spiking coffee',
    ingredients: [
      IngredientDefinition('Coffee', 'null'),
      IngredientDefinition('Cinnamon', 'null'),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/isql6y1487602375.jpg',
  ),
  Cocktail(
    id: '13036',
    category: CocktailCategory.punchPartyDrink,
    cocktailType: CocktailType.nonAlcoholic,
    glassType: GlassType.collinsGlass,
    instruction: '''
                      Throw everything into a blender and mix until fairly smooth. Serve over ice.
                    ''',
    isFavourite: true,
    name: 'Strawberry Lemonade',
    ingredients: [
      IngredientDefinition('Lemon', 'Juice of 1 '),
      IngredientDefinition('Sugar', '1 tblsp '),
      IngredientDefinition('Strawberries', '8-10 ripe '),
      IngredientDefinition('Water', '1 cup '),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/spvvxp1468924425.jpg',
  ),
  Cocktail(
    id: '12722',
    category: CocktailCategory.unknown,
    cocktailType: CocktailType.nonAlcoholic,
    glassType: GlassType.highballGlass,
    instruction: '''
                      Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.
                    ''',
    isFavourite: true,
    name: 'Strawberry Shivers',
    ingredients: [
      IngredientDefinition('Strawberries', '1 1/2 cup '),
      IngredientDefinition('Honey', '4 tsp '),
      IngredientDefinition('Water', '1/2 cup '),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/9h1vvt1487603404.jpg',
  ),
  Cocktail(
    id: '12724',
    category: CocktailCategory.milkFloatShake,
    cocktailType: CocktailType.nonAlcoholic,
    glassType: GlassType.highballGlass,
    instruction: '''
                      Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.
                    ''',
    isFavourite: true,
    name: 'Sweet Bananas',
    ingredients: [
      IngredientDefinition('Milk', '2 cups '),
      IngredientDefinition('Banana', '1 '),
      IngredientDefinition('Honey', '1 tblsp '),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/sxpcj71487603345.jpg',
  ),
  Cocktail(
    id: '12782',
    category: CocktailCategory.coffeeTea,
    cocktailType: CocktailType.nonAlcoholic,
    glassType: GlassType.highballGlass,
    instruction: '''
                      Place the coffee and spices in the filter cone of your coffee maker. Brew coffee as usual, let it cool. In a tall glass, dissolve 1 or 2 teaspoons of sugar in an ounce of the coffee (it\'s easier to dissolve than if you put it right over ice). Add 5-6 ice cubes and pour coffee to within about 1 inch of the top of the glass. Rest a spoon on top of the coffee and slowly pour whipping cream into the spoon. This will make the cream float on top of the coffee rather than dispersing into it right away.
                    ''',
    isFavourite: true,
    name: 'Thai Coffee',
    ingredients: [
      IngredientDefinition('Coffee', '6 tblsp ground'),
      IngredientDefinition('Coriander', '1/4 tsp '),
      IngredientDefinition('Cardamom', '4-5 whole green '),
      IngredientDefinition('Sugar', 'null'),
      IngredientDefinition('Whipping cream', 'null'),
      IngredientDefinition('Ice', 'null'),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/wquwxs1441247025.jpg',
  ),
  Cocktail(
    id: '12784',
    category: CocktailCategory.coffeeTea,
    cocktailType: CocktailType.nonAlcoholic,
    glassType: GlassType.highballGlass,
    instruction: '''
                      Prepare a pot of coffee at a good European strength. In the ground coffee, add 2 or 3 freshly ground cardamom pods. Sweeten while hot, then cool quickly. Serve in highball glass over ice, with cream. To get the layered effect, place a spoon atop the coffee and pour the milk carefully into the spoon so that it floats on the top of the coffee.
                    ''',
    isFavourite: true,
    name: 'Thai Iced Coffee',
    ingredients: [
      IngredientDefinition('Coffee', 'black'),
      IngredientDefinition('Sugar', 'null'),
      IngredientDefinition('Cream', ' pods'),
      IngredientDefinition('Cardamom', 'null'),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/rqpypv1441245650.jpg',
  ),
  Cocktail(
    id: '12786',
    category: CocktailCategory.coffeeTea,
    cocktailType: CocktailType.nonAlcoholic,
    glassType: GlassType.highballGlass,
    instruction: '''
                      Combine Thai tea (i.e., the powder), boiling water, and sweetened condensed milk, stir until blended. Pour into 2 tall glasses filled with ice cubes. Garnish with mint leaves. Makes 2 servings.
                    ''',
    isFavourite: true,
    name: 'Thai Iced Tea',
    ingredients: [
      IngredientDefinition('Tea', '1/4 cup Thai '),
      IngredientDefinition('Water', '1/2 cup boiling '),
      IngredientDefinition('Condensed milk', '2 tsp sweetened '),
      IngredientDefinition('Ice', 'cubes'),
      IngredientDefinition('Mint', 'garnish'),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/trvwpu1441245568.jpg',
  ),
  Cocktail(
    id: '12726',
    category: CocktailCategory.unknown,
    cocktailType: CocktailType.nonAlcoholic,
    glassType: GlassType.highballGlass,
    instruction: '''
                      Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.
                    ''',
    isFavourite: true,
    name: 'Tomato Tang',
    ingredients: [
      IngredientDefinition('Tomato juice', '2 cups '),
      IngredientDefinition('Lemon juice', '1-2 tblsp '),
      IngredientDefinition('Celery salt', '1 dash '),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/869qr81487603278.jpg',
  ),
  Cocktail(
    id: '12728',
    category: CocktailCategory.unknown,
    cocktailType: CocktailType.nonAlcoholic,
    glassType: GlassType.highballGlass,
    instruction: '''
                      Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up. Note: Use lots of ice in this one - great on hot days! To add ice: Remove the center of the cover while the blender is on - drop 3 or 4 ice cubs and blend until they're completely crushed.
                    ''',
    isFavourite: true,
    name: 'Yoghurt Cooler',
    ingredients: [
      IngredientDefinition('Yoghurt', '1 cup '),
      IngredientDefinition('Fruit', '1 cup '),
      IngredientDefinition('Ice', 'null'),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/trttrv1441254466.jpg',
  ),
  Cocktail(
    id: '12864',
    category: CocktailCategory.punchPartyDrink,
    cocktailType: CocktailType.optionalAlcohol,
    glassType: GlassType.collinsGlass,
    instruction: '''
                      If you use the whole all spice and cloves, tie them in cheesecloth. Heat the mixture. Stir occasionally. If you want an alcoholic drink, rum would be nice.
                    ''',
    isFavourite: true,
    name: 'Apple Cider Punch #1',
    ingredients: [
      IngredientDefinition('Apple cider', '4 qt '),
      IngredientDefinition('Brown sugar', '1 cup '),
      IngredientDefinition('Lemonade', '6 oz frozen '),
      IngredientDefinition('Orange juice', '6 oz frozen '),
      IngredientDefinition('Cloves', '6 whole '),
      IngredientDefinition('Allspice', '6 whole '),
      IngredientDefinition('Nutmeg', '1 tsp ground '),
      IngredientDefinition('Cinnamon', '3 sticks '),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/xrqxuv1454513218.jpg',
  ),
  Cocktail(
    id: '15615',
    category: CocktailCategory.milkFloatShake,
    cocktailType: CocktailType.optionalAlcohol,
    glassType: GlassType.parfaitGlass,
    instruction: '''
                      blend liqeuors with ice-cream, milk and syrup. pour into parfait glass, top with whipped cream and garnish with banana and cherry.
                    ''',
    isFavourite: true,
    name: 'Chocolate Monkey',
    ingredients: [
      IngredientDefinition('Banana liqueur', '1 shot '),
      IngredientDefinition('Creme de Cacao', '2 shots '),
      IngredientDefinition('Chocolate ice-cream', '2 scoops '),
      IngredientDefinition('Chocolate syrup', '1 oz '),
      IngredientDefinition('Chocolate milk', '4 oz '),
      IngredientDefinition('Whipped cream', '1 '),
      IngredientDefinition('Cherry', '1 '),
      IngredientDefinition('Banana', '1 piece '),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/tyvpxt1468875212.jpg',
  ),
  Cocktail(
    id: '12910',
    category: CocktailCategory.punchPartyDrink,
    cocktailType: CocktailType.optionalAlcohol,
    glassType: GlassType.punchBowl,
    instruction: '''
                      In a small mixer bowl beat egg yolks till blended. Gradually add 1/4 cup sugar, beating at high speed till thick and lemon colored. Stir in milk, stir in rum, bourbon, vanilla, and salt. Chill thoroughly. Whip cream. Wash beaters well. In a large mixer bowl beat egg whites till soft peaks form. Gradually add remaining 1/4 cup sugar, beating to stiff peaks. Fold yolk mixture and whipped cream into egg whites. Serve immediately. Sprinkle nutmeg over each serving. Serve in a punch bowl or another big bowl. NOTE: For a nonalcoholic eggnog, prepare Eggnog as above, except omit the bourbon and rum and increase the milk to 3 cups.
                    ''',
    isFavourite: true,
    name: 'Egg Nog #4',
    ingredients: [
      IngredientDefinition('Egg yolk', '6 '),
      IngredientDefinition('Sugar', '1/4 cup '),
      IngredientDefinition('Milk', '2 cups '),
      IngredientDefinition('Light rum', '1/2 cup '),
      IngredientDefinition('Bourbon', '1/2 cup '),
      IngredientDefinition('Vanilla extract', '1 tsp '),
      IngredientDefinition('Salt', '1/4 tsp '),
      IngredientDefinition('Whipping cream', '1 cup '),
      IngredientDefinition('Egg white', '6 '),
      IngredientDefinition('Nutmeg', 'Ground '),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/wpspsy1468875747.jpg',
  ),
  Cocktail(
    id: '12916',
    category: CocktailCategory.punchPartyDrink,
    cocktailType: CocktailType.optionalAlcohol,
    glassType: GlassType.collinsGlass,
    instruction: '''
                      Whip egg substitute and sugar together, combine with the two kinds of milk, vanilla, and rum. Mix well. Chill over night. Sprinkle with nutmeg. Makes 6 servings.
                    ''',
    isFavourite: true,
    name: 'Egg Nog - Healthy',
    ingredients: [
      IngredientDefinition('Egg', '1/2 cup '),
      IngredientDefinition('Sugar', '3 tblsp '),
      IngredientDefinition('Condensed milk', '13 oz skimmed '),
      IngredientDefinition('Milk', '3/4 cup skimmed '),
      IngredientDefinition('Vanilla extract', '1 tsp '),
      IngredientDefinition('Rum', '1 tsp '),
      IngredientDefinition('Nutmeg', ''),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/qxuppv1468875308.jpg',
  ),
  Cocktail(
    id: '12914',
    category: CocktailCategory.punchPartyDrink,
    cocktailType: CocktailType.optionalAlcohol,
    glassType: GlassType.pitcher,
    instruction: '''
                      In large saucepan, beat together eggs, sugar and salt, if desired. Stir in 2 cups of the milk. Cook over low heat, stirring constantly, until mixture is thick enough to coat a metal spoon and reaches 160 degrees F. Remove from heat. Stir in remaining 2 cups milk and vanilla. Cover and regfigerate until thoroughly chilled, several hours or overnight. Just before serving, pour into bowl or pitcher. Garnish or add stir-ins, if desired. Choose 1 or several of: Chocolate curls, cinnamon sticks, extracts of flavorings, flavored brandy or liqueur, fruit juice or nectar, ground nutmeg, maraschino cherries, orange slices, peppermint sticks or candy canes, plain brandy, run or whiskey, sherbet or ice-cream, whipping cream, whipped. Serve immediately.
                    ''',
    isFavourite: true,
    name: 'Egg-Nog - Classic Cooked',
    ingredients: [
      IngredientDefinition('Egg', '6 '),
      IngredientDefinition('Sugar', '1/4 cup '),
      IngredientDefinition('Salt', '1/4 tsp '),
      IngredientDefinition('Milk', '1 qt '),
      IngredientDefinition('Vanilla extract', '1 tsp '),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/quxsvt1468875505.jpg',
  ),
  Cocktail(
    id: '15997',
    category: CocktailCategory.ordinaryDrink,
    cocktailType: CocktailType.optionalAlcohol,
    glassType: GlassType.collinsGlass,
    instruction: '''
                      Pour the Galliano liqueur over ice. Fill the remainder of the glass with ginger ale and thats all there is to it. You now have a your very own GG.
                    ''',
    isFavourite: true,
    name: 'GG',
    ingredients: [
      IngredientDefinition('Galliano', '2 1/2 shots '),
      IngredientDefinition('Ginger ale', 'null'),
      IngredientDefinition('Ice', 'null'),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/vyxwut1468875960.jpg',
  ),
  Cocktail(
    id: '12944',
    category: CocktailCategory.punchPartyDrink,
    cocktailType: CocktailType.optionalAlcohol,
    glassType: GlassType.irishCoffeeCup,
    instruction: '''
                      Boil sugar and spices in water, leave in the water for 30 minutes. Strain the spiced water and mix with the wine. Heat slowly until short of boiling temperature. (To remove alcohol, let it boil for a while.) You may add lemon or orange juice to taste. Serve in irish coffee cup.
                    ''',
    isFavourite: true,
    name: 'Gluehwein',
    ingredients: [
      IngredientDefinition('Red wine', '1 L '),
      IngredientDefinition('Water', '125 ml '),
      IngredientDefinition('Sugar', '60 gr '),
      IngredientDefinition('Cinnamon', '1 '),
      IngredientDefinition('Cloves', '3 '),
      IngredientDefinition('Lemon peel', '1 tblsp '),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/vuxwvt1468875418.jpg',
  ),
  Cocktail(
    id: '13042',
    category: CocktailCategory.punchPartyDrink,
    cocktailType: CocktailType.optionalAlcohol,
    glassType: GlassType.punchBowl,
    instruction: '''
                      Combine all ingredients in a punch bowl.
                    ''',
    isFavourite: true,
    name: 'Sunny Holiday Punch',
    ingredients: [
      IngredientDefinition('Pineapple juice', '46 oz chilled '),
      IngredientDefinition('Club soda', '28 oz '),
      IngredientDefinition('Orange juice', '6 oz frozen '),
      IngredientDefinition('Lemon', '1 '),
      IngredientDefinition('Berries', '2 cups '),
      IngredientDefinition('Champagne', '1 bottle '),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/rywtwy1468924758.jpg',
  ),
  Cocktail(
    id: '13056',
    category: CocktailCategory.punchPartyDrink,
    cocktailType: CocktailType.optionalAlcohol,
    glassType: GlassType.collinsGlass,
    instruction: '''
                      Mix wine and soft drink. Pour into glass. Add ice.
                    ''',
    isFavourite: true,
    name: 'Wine Cooler',
    ingredients: [
      IngredientDefinition('Red wine', '2 oz white or '),
      IngredientDefinition('Lemon-lime soda', '5 oz '),
      IngredientDefinition('Ice', 'cubes'),
    ],
    drinkThumbUrl:
        'https://www.thecocktaildb.com/images/media/drink/yutxtv1473344210.jpg',
  ),
];
