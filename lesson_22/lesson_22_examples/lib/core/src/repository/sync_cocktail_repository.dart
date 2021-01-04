import 'package:cocktail_app/core/src/model/cocktail.dart';
import 'package:cocktail_app/core/src/model/cocktail_category.dart';
import 'package:cocktail_app/core/src/model/cocktail_type.dart';
import 'package:cocktail_app/core/src/model/glass_type.dart';
import 'package:cocktail_app/core/src/model/ingredient_definition.dart';

class SyncCocktailRepository {
  Iterable<Cocktail> fetchAllCocktails() {
    return [
      Cocktail(
        id: '14029',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      1. Fill a rocks glass with ice 2.add white creme de cacao and vodka 3.stir
                    ''',
        isFavourite: true,
        name: '\'57 Chevy with a White License Plate',
        ingredients: [
          IngredientDefinition('Creme de Cacao', '1 oz white '),
          IngredientDefinition('Vodka', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qyyvtu1468878544.jpg',
      ),
      Cocktail(
        id: '15395',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Shake ingredients in a mixing tin filled with ice cubes. Strain into a rocks glass.
                    ''',
        isFavourite: true,
        name: '1-900-FUK-MEUP',
        ingredients: [
          IngredientDefinition('Absolut Kurant', '1/2 oz '),
          IngredientDefinition('Grand Marnier', '1/4 oz '),
          IngredientDefinition('Chambord raspberry liqueur', '1/4 oz '),
          IngredientDefinition('Midori melon liqueur', '1/4 oz '),
          IngredientDefinition('Malibu rum', '1/4 oz '),
          IngredientDefinition('Amaretto', '1/4 oz '),
          IngredientDefinition('Cranberry juice', '1/2 oz '),
          IngredientDefinition('Pineapple juice', '1/4 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uxywyw1468877224.jpg',
      ),
      Cocktail(
        id: '15423',
        category: CocktailCategory.beer,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.beerGlass,
        instruction: '''
                      Drop shooter in glass. Fill with beer
                    ''',
        isFavourite: true,
        name: '110 in the shade',
        ingredients: [
          IngredientDefinition('Lager', '16 oz '),
          IngredientDefinition('Tequila', '1.5 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xxyywq1454511117.jpg',
      ),
      Cocktail(
        id: '14588',
        category: CocktailCategory.milkFloatShake,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.beerMug,
        instruction: '''
                      Combine all ingredients. Blend until smooth. Garnish with chocolate shavings if desired.
                    ''',
        isFavourite: true,
        name: '151 Florida Bushwacker',
        ingredients: [
          IngredientDefinition('Malibu rum', '1/2 oz '),
          IngredientDefinition('Light rum', '1/2 oz '),
          IngredientDefinition('151 proof rum', '1/2 oz Bacardi '),
          IngredientDefinition('Dark Creme de Cacao', '1 oz '),
          IngredientDefinition('Cointreau', '1 oz '),
          IngredientDefinition('Milk', '3 oz '),
          IngredientDefinition('Coconut liqueur', '1 oz '),
          IngredientDefinition('Vanilla ice-cream', '1 cup '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rvwrvv1468877323.jpg',
      ),
      Cocktail(
        id: '15346',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.whiteWineGlass,
        instruction: '''
                      Blend with ice. Serve in a wine glass. Garnish with carrot.
                    ''',
        isFavourite: true,
        name: '155 Belmont',
        ingredients: [
          IngredientDefinition('Dark rum', '1 shot '),
          IngredientDefinition('Light rum', '2 shots '),
          IngredientDefinition('Vodka', '1 shot '),
          IngredientDefinition('Orange juice', '1 shot '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yqvvqs1475667388.jpg',
      ),
      Cocktail(
        id: '17060',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Add over ice,shake and pour.
                    ''',
        isFavourite: true,
        name: '24k nightmare',
        ingredients: [
          IngredientDefinition('Goldschlager', '1/2 oz '),
          IngredientDefinition('Jägermeister', '1/2 oz '),
          IngredientDefinition('Rumple Minze', '1/2 oz '),
          IngredientDefinition('151 proof rum', '1/2 oz Bacardi '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yyrwty1468877498.jpg',
      ),
      Cocktail(
        id: '15288',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Add both ingredients to shot glass, shoot, and get drunk quick
                    ''',
        isFavourite: true,
        name: '252',
        ingredients: [
          IngredientDefinition('151 proof rum', '1/2 shot Bacardi '),
          IngredientDefinition('Wild Turkey', '1/2 shot '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rtpxqw1468877562.jpg',
      ),
      Cocktail(
        id: '13899',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      put them them in a glass... and slam it to tha head.
                    ''',
        isFavourite: true,
        name: '3 Wise Men',
        ingredients: [
          IngredientDefinition('Jack Daniels', '1/3 oz '),
          IngredientDefinition('Johnnie Walker', '1/3 oz '),
          IngredientDefinition('Jim Beam', '1/3 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wxqpyw1468877677.jpg',
      ),
      Cocktail(
        id: '15300',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Fill 14oz glass with ice and alcohol. Fill 2/3 glass with cola and remainder with sweet & sour. Top with dash of bitters and lemon wedge.
                    ''',
        isFavourite: true,
        name: '3-Mile Long Island Iced Tea',
        ingredients: [
          IngredientDefinition('Gin', '1/2 oz'),
          IngredientDefinition('Light rum', '1/2 oz'),
          IngredientDefinition('Tequila', '1/2 oz'),
          IngredientDefinition('Triple sec', '1/2 oz'),
          IngredientDefinition('Vodka', '1/2 oz'),
          IngredientDefinition('Coca-Cola', '1/2 oz'),
          IngredientDefinition('Sweet and sour', '1-2 dash '),
          IngredientDefinition('Bitters', '1 wedge '),
          IngredientDefinition('Lemon', 'Garnish with'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rrtssw1472668972.jpg',
      ),
      Cocktail(
        id: '13581',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      
                    ''',
        isFavourite: true,
        name: '410 Gone',
        ingredients: [
          IngredientDefinition('Peach Vodka', '2-3 oz'),
          IngredientDefinition('Coca-Cola', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xtuyqv1472669026.jpg',
      ),
      Cocktail(
        id: '14598',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      fill glass with crushed ice. Add vodka. Add a splash of grand-marnier. Fill with o.j.
                    ''',
        isFavourite: true,
        name: '50/50',
        ingredients: [
          IngredientDefinition('Vanilla vodka', '2 1/2 oz '),
          IngredientDefinition('Grand Marnier', '1 splash '),
          IngredientDefinition('Orange juice', 'Fill with '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wwpyvr1461919316.jpg',
      ),
      Cocktail(
        id: '17105',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Mix equal amounts into a glass with ice.
                    ''',
        isFavourite: true,
        name: '501 Blue',
        ingredients: [
          IngredientDefinition('Blue Curacao', 'null'),
          IngredientDefinition('Blueberry schnapps', 'null'),
          IngredientDefinition('Vodka', 'null'),
          IngredientDefinition('Sour mix', 'null'),
          IngredientDefinition('7-Up', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ywxwqs1461867097.jpg',
      ),
      Cocktail(
        id: '13940',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Pour 2 oz. gin. Add 4 oz. 7-up. Add Lemon Juice for flavor. If you are weak, top up glass with more 7-Up.
                    ''',
        isFavourite: true,
        name: '69 Special',
        ingredients: [
          IngredientDefinition('Gin', '2 oz dry '),
          IngredientDefinition('7-Up', '4 oz '),
          IngredientDefinition('Lemon juice', '0.75 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vqyxqx1472669095.jpg',
      ),
      Cocktail(
        id: '14229',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      pour kaluha, then Baileys, then Frangelico not chilled and not layered -- SERVE!!!
                    ''',
        isFavourite: true,
        name: '747',
        ingredients: [
          IngredientDefinition('Kahlua', '1/3 part '),
          IngredientDefinition('Baileys irish cream', '1/3 part '),
          IngredientDefinition('Frangelico', '1/3 part '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xxsxqy1472668106.jpg',
      ),
      Cocktail(
        id: '178318',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Fill a Collins glass with ice.
Pour in vodka, lime cordial, and cranberry juice.
Fill up with Sprite.
Garnish with a Lime wheel or some cranberries
                    ''',
        isFavourite: true,
        name: '747 Drink',
        ingredients: [
          IngredientDefinition('Vodka', '1 oz'),
          IngredientDefinition('Roses sweetened lime juice', '1 oz'),
          IngredientDefinition('Cranberry Juice', '1 oz'),
          IngredientDefinition('Sprite', 'Top'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/i9suxb1582474926.jpg',
      ),
      Cocktail(
        id: '16108',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Combine all ingredients in glass mixer. Chill and strain into Cocktail glass. Garnish with sliced strawberry.
                    ''',
        isFavourite: true,
        name: '9 1/2 Weeks',
        ingredients: [
          IngredientDefinition('Absolut Citron', '2 oz '),
          IngredientDefinition('Orange Curacao', '1/2 oz '),
          IngredientDefinition('Strawberry liqueur', '1 splash '),
          IngredientDefinition('Orange juice', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xvwusr1472669302.jpg',
      ),
      Cocktail(
        id: '15200',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Shake Rum, Amaretto, and Orange Juice in a shaker filled with ice. Strain over ice into a highball glass. Add Grenadine and garnish with a Pineapple Wedge and a Strawberry.
                    ''',
        isFavourite: true,
        name: 'A Day at the Beach',
        ingredients: [
          IngredientDefinition('Coconut rum', '1 oz '),
          IngredientDefinition('Amaretto', '1/2 oz '),
          IngredientDefinition('Orange juice', '4 oz '),
          IngredientDefinition('Grenadine', '1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/trptts1454514474.jpg',
      ),
      Cocktail(
        id: '17831',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour the rum and ginger beer into a highball glass almost filled with ice cubes. Stir well. Garnish with the lemon twist.
                    ''',
        isFavourite: true,
        name: 'A Furlong Too Late',
        ingredients: [
          IngredientDefinition('Light rum', '2 oz '),
          IngredientDefinition('Ginger beer', '4 oz '),
          IngredientDefinition('Lemon peel', '1 twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ssxvww1472669166.jpg',
      ),
      Cocktail(
        id: '16943',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Shaken, not stirred!
                    ''',
        isFavourite: true,
        name: 'A Gilligan\'s Island',
        ingredients: [
          IngredientDefinition('Vodka', '1 oz '),
          IngredientDefinition('Peach schnapps', '1 oz '),
          IngredientDefinition('Orange juice', '3 oz '),
          IngredientDefinition('Cranberry juice', '3 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wysqut1461867176.jpg',
      ),
      Cocktail(
        id: '15675',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Mix the strawberrys in a blender Pour it together with the vodka,kirch and strawberry liquer over ice in a shaker. Shake well and pour in a highballglass. Fill up with the Russchian water
                    ''',
        isFavourite: true,
        name: 'A midsummernight dream',
        ingredients: [
          IngredientDefinition('Vodka', '2 oz '),
          IngredientDefinition('Kirschwasser', '1 oz '),
          IngredientDefinition('Strawberry liqueur', '1 tsp '),
          IngredientDefinition('Strawberries', '5 '),
          IngredientDefinition('Schweppes Russchian', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ysqvqp1461867292.jpg',
      ),
      Cocktail(
        id: '17832',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine the light rum, añejo rum, orange juice, and lemon juice. Shake well. Strain into a highball glass almost filled with ice cubes. Top with the ginger ale. Garnish with the lemon twist.
                    ''',
        isFavourite: true,
        name: 'A Night In Old Mandalay',
        ingredients: [
          IngredientDefinition('Light rum', '1 oz '),
          IngredientDefinition('Añejo rum', '1 oz '),
          IngredientDefinition('Orange juice', '1 oz '),
          IngredientDefinition('Lemon juice', '1/2 oz '),
          IngredientDefinition('Ginger ale', '3 oz '),
          IngredientDefinition('Lemon peel', '1 twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vyrvxt1461919380.jpg',
      ),
      Cocktail(
        id: '16405',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Put ice in glass. Pour in shots. Fill with Sour Mix.
                    ''',
        isFavourite: true,
        name: 'A Piece of Ass',
        ingredients: [
          IngredientDefinition('Amaretto', '1 shot '),
          IngredientDefinition('Southern Comfort', '1 shot '),
          IngredientDefinition('Ice', 'cubes'),
          IngredientDefinition('Sour mix', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tqxyxx1472719737.jpg',
      ),
      Cocktail(
        id: '14564',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Drop shot glass with banana & melon liquers into a 9 oz hi- ball glass containing soda water and cranberry juice. Drink in one shot.
                    ''',
        isFavourite: true,
        name: 'A Splash of Nash',
        ingredients: [
          IngredientDefinition('Cranberry juice', '2 oz '),
          IngredientDefinition('Soda water', '2 oz '),
          IngredientDefinition('Midori melon liqueur', '0.5 oz '),
          IngredientDefinition('Creme de Banane', '0.5 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rsvtrr1472668201.jpg',
      ),
      Cocktail(
        id: '17005',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Rub the rim of an old fashioned glass with lemon, and dip repeatedly into granulated sugar until it has a good "frosted" rim. Shake a jigger of Amaretto with the juice of 1/2 a lemon. Strain into glass and add ice. Garnish with a Marachino Cherry.
                    ''',
        isFavourite: true,
        name: 'A True Amaretto Sour',
        ingredients: [
          IngredientDefinition('Amaretto', '1 jigger '),
          IngredientDefinition('Lemon', 'Juice of 1/2 '),
          IngredientDefinition('Ice', 'null'),
          IngredientDefinition('Maraschino cherry', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rptuxy1472669372.jpg',
      ),
      Cocktail(
        id: '17833',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'A. J.',
        ingredients: [
          IngredientDefinition('Applejack', '1 1/2 oz '),
          IngredientDefinition('Grapefruit juice', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/l74qo91582480316.jpg',
      ),
      Cocktail(
        id: '14560',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.irishCoffeeCup,
        instruction: '''
                      shake vigorously
                    ''',
        isFavourite: true,
        name: 'A.D.M. (After Dinner Mint)',
        ingredients: [
          IngredientDefinition('White Creme de Menthe', '1/2 oz '),
          IngredientDefinition('Southern Comfort', '3/4 oz '),
          IngredientDefinition('Vodka', '1/2 oz '),
          IngredientDefinition('Hot chocolate', 'Fill with '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ruxuvp1472669600.jpg',
      ),
      Cocktail(
        id: '17222',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Pour all ingredients into a cocktail shaker, mix and serve over ice into a chilled glass.
                    ''',
        isFavourite: true,
        name: 'A1',
        ingredients: [
          IngredientDefinition('Gin', '1 3/4 shot '),
          IngredientDefinition('Grand Marnier', '1 Shot '),
          IngredientDefinition('Lemon Juice', '1/4 Shot'),
          IngredientDefinition('Grenadine', '1/8 Shot'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/2x8thr1504816928.jpg',
      ),
      Cocktail(
        id: '17834',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients (except for the cherry) with ice and strain into a cocktail glass. Top with the cherry and serve.
                    ''',
        isFavourite: true,
        name: 'Abbey Cocktail',
        ingredients: [
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Orange bitters', '1 dash '),
          IngredientDefinition('Orange', 'Juice of 1/4 '),
          IngredientDefinition('Cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/mr30ob1582479875.jpg',
      ),
      Cocktail(
        id: '17223',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Put all ingredients into a shaker and mix, then strain contents into a chilled cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Abbey Martini',
        ingredients: [
          IngredientDefinition('Gin', '2 shots '),
          IngredientDefinition('Sweet Vermouth', '1 shot '),
          IngredientDefinition('Orange Juice', '1 shot '),
          IngredientDefinition('Angostura Bitters', '3 dashes '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/2mcozt1504817403.jpg',
      ),
      Cocktail(
        id: '13501',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Layered in a shot glass.
                    ''',
        isFavourite: true,
        name: 'ABC',
        ingredients: [
          IngredientDefinition('Amaretto', '1/3 '),
          IngredientDefinition('Baileys irish cream', '1/3 '),
          IngredientDefinition('Cognac', '1/3 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tqpvqp1472668328.jpg',
      ),
      Cocktail(
        id: '17835',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour all of the ingredients into a highball glass almost filled with ice cubes. Stir well.
                    ''',
        isFavourite: true,
        name: 'Abilene',
        ingredients: [
          IngredientDefinition('Dark rum', '1 1/2 oz '),
          IngredientDefinition('Peach nectar', '2 oz '),
          IngredientDefinition('Orange juice', '3 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/smb2oe1582479072.jpg',
      ),
      Cocktail(
        id: '12790',
        category: CocktailCategory.homemadeLiqueur,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.jar,
        instruction: '''
                      Mix together and let sit a few days. Strain through a coffee filter. To serve mix 1 part absinthe to 4 parts water, add ice, enjoy.
                    ''',
        isFavourite: true,
        name: 'Absinthe #2',
        ingredients: [
          IngredientDefinition('Vodka', '1 bottle '),
          IngredientDefinition('Sugar', '50 gr '),
          IngredientDefinition('Anise', '50 ml pure '),
          IngredientDefinition('Licorice root', '1 tblsp '),
          IngredientDefinition('Wormwood', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uxxtrt1472667197.jpg',
      ),
      Cocktail(
        id: '14374',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Mix, pour over ice and top up with Bitter Lemon.
                    ''',
        isFavourite: true,
        name: 'Absolut Evergreen',
        ingredients: [
          IngredientDefinition('Absolut Citron', '2/3 part '),
          IngredientDefinition('Pisang Ambon', '1/3 part '),
          IngredientDefinition('Ice', 'cubes'),
          IngredientDefinition('Bitter lemon', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wrxrxp1472812609.jpg',
      ),
      Cocktail(
        id: '14372',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Fill Absolut into a glass. Add Lime juice. Add Ice and lime wedges.
                    ''',
        isFavourite: true,
        name: 'Absolut limousine',
        ingredients: [
          IngredientDefinition('Absolut Citron', '2/3 '),
          IngredientDefinition('Lime juice', '1/3 '),
          IngredientDefinition('Ice', 'Fill with '),
          IngredientDefinition('Tonic water', 'Top it up with '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ssqpyw1472719844.jpg',
      ),
      Cocktail(
        id: '14360',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Shake Absolut Kurant, Midori, and Cranberry juice in shaker with ice: Strain into rocks glass: Splash of seven on top.Absolut Sex.
                    ''',
        isFavourite: true,
        name: 'Absolut Sex',
        ingredients: [
          IngredientDefinition('Absolut Kurant', '3/4 oz '),
          IngredientDefinition('Midori melon liqueur', '3/4 oz '),
          IngredientDefinition('Cranberry juice', '1 oz '),
          IngredientDefinition('Sprite', '1 splash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xtrvtx1472668436.jpg',
      ),
      Cocktail(
        id: '15597',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Mix well. Garnish with Orange and Cherry. Enjoy
                    ''',
        isFavourite: true,
        name: 'Absolut Stress #2',
        ingredients: [
          IngredientDefinition('Absolut Vodka', '1 1/2 oz '),
          IngredientDefinition('Peach schnapps', '1/2 oz '),
          IngredientDefinition('Coconut liqueur', '1/2 oz '),
          IngredientDefinition('Cranberry juice', '1 1/2 oz '),
          IngredientDefinition('Pineapple juice', '1 1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xuyqrw1472811825.jpg',
      ),
      Cocktail(
        id: '14107',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Add all ingredients except lemon to shaker filled with ice. Cover and shake vigorously. Strain contents into ice filled collins glass. Garnish with lemon.
                    ''',
        isFavourite: true,
        name: 'Absolut Summertime',
        ingredients: [
          IngredientDefinition('Absolut Citron', '1 1/2 oz '),
          IngredientDefinition('Sweet and sour', '3/4 oz '),
          IngredientDefinition('Sprite', '1/2 oz '),
          IngredientDefinition('Soda water', '3 oz '),
          IngredientDefinition('Lemon', '1 slice '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/trpxxs1472669662.jpg',
      ),
      Cocktail(
        id: '15024',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir ingredients together. Serve over ice.
                    ''',
        isFavourite: true,
        name: 'Absolutely Cranberry Smash',
        ingredients: [
          IngredientDefinition('Absolut Vodka', '2 oz '),
          IngredientDefinition('Cranberry juice', '4 oz '),
          IngredientDefinition('Ginger ale', '2 oz '),
          IngredientDefinition('Ice', 'Add '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vqwstv1472811884.jpg',
      ),
      Cocktail(
        id: '17224',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.champagneFlute,
        instruction: '''
                      Mix the Vodka and Cranberry juice together in a shaker and strain into a glass. Top up with Champagne.
                    ''',
        isFavourite: true,
        name: 'Absolutely Fabulous',
        ingredients: [
          IngredientDefinition('Vodka', '1 shot '),
          IngredientDefinition('Cranberry Juice', '2 shots '),
          IngredientDefinition('Champagne', 'Top up with'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/abcpwr1504817734.jpg',
      ),
      Cocktail(
        id: '16134',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Shake it up it tasts better that way, but you can stir it if you want. 6 of those and you will be wasted for the rest of the night.
                    ''',
        isFavourite: true,
        name: 'Absolutly Screwed Up',
        ingredients: [
          IngredientDefinition('Absolut Citron', '1 shot '),
          IngredientDefinition('Orange juice', '1 shot '),
          IngredientDefinition('Triple sec', '1 shot '),
          IngredientDefinition('Ginger ale', 'Fill to top '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yvxrwv1472669728.jpg',
      ),
      Cocktail(
        id: '17836',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Combine and shake all ingredients (except mint) with ice and strain into an old-fashioned glass over ice cubes. Add the sprig of mint and serve.
                    ''',
        isFavourite: true,
        name: 'Acapulco',
        ingredients: [
          IngredientDefinition('Light rum', '1 1/2 oz '),
          IngredientDefinition('Triple sec', '1 1/2 tsp '),
          IngredientDefinition('Lime juice', '1 tblsp '),
          IngredientDefinition('Sugar', '1 tsp '),
          IngredientDefinition('Egg white', '1 '),
          IngredientDefinition('Mint', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/il9e0r1582478841.jpg',
      ),
      Cocktail(
        id: '17225',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.martiniGlass,
        instruction: '''
                      Shake all the ingredients in a cocktail shaker and ice then strain in a cold glass.
                    ''',
        isFavourite: true,
        name: 'Ace',
        ingredients: [
          IngredientDefinition('Gin', '2 shots '),
          IngredientDefinition('Grenadine', '1/2 shot '),
          IngredientDefinition('Heavy cream', '1/2 shot '),
          IngredientDefinition('Milk', '1/2 shot'),
          IngredientDefinition('Egg White', '1/2 Fresh'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/l3cd7f1504818306.jpg',
      ),
      Cocktail(
        id: '14610',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Poor in the 151 first followed by the 101 served with a Coke or Dr Pepper chaser.
                    ''',
        isFavourite: true,
        name: 'ACID',
        ingredients: [
          IngredientDefinition('151 proof rum', '1 oz Bacardi '),
          IngredientDefinition('Wild Turkey', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xuxpxt1479209317.jpg',
      ),
      Cocktail(
        id: '17837',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Adam',
        ingredients: [
          IngredientDefinition('Dark rum', '2 oz '),
          IngredientDefinition('Lemon juice', '1 oz '),
          IngredientDefinition('Grenadine', '1 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/v0at4i1582478473.jpg',
      ),
      Cocktail(
        id: '17226',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake together all the ingredients and strain into a cold glass.
                    ''',
        isFavourite: true,
        name: 'Adam & Eve',
        ingredients: [
          IngredientDefinition('Gin', '1 shot '),
          IngredientDefinition('Cognac', '1 shot '),
          IngredientDefinition('Creme de Cassis', '1 shot '),
          IngredientDefinition('Fresh Lemon Juice', '1/8 shot '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vfeumw1504819077.jpg',
      ),
      Cocktail(
        id: '16333',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.margaritaCoupetteGlass,
        instruction: '''
                      Add ice to blender (or to glass if prefer on the rocks) then fruit, and fruite juice depending on personal prefference then add the Rum, Vodka, Tequila, and triple sec. blend till smooth, rim glass with sugar or salt and pour mixture in. garnish with lemon or lime slice.
                    ''',
        isFavourite: true,
        name: 'Adam Bomb',
        ingredients: [
          IngredientDefinition('Rum', '1 part '),
          IngredientDefinition('Vodka', '1 part '),
          IngredientDefinition('Tequila', '1 part '),
          IngredientDefinition('Triple sec', '1/2 part '),
          IngredientDefinition('Fruit', 'null'),
          IngredientDefinition('Ice', 'null'),
          IngredientDefinition('Salt', '1-3 pint '),
          IngredientDefinition('Fruit juice', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tpxurs1454513016.jpg',
      ),
      Cocktail(
        id: '15567',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Fill blender up with ice. Fill half with Bartons Vodka. Put 10 tsp of sugar, add 1/2 can lemonade concentrate, fill to top with water. Blend for 60 seconds.
                    ''',
        isFavourite: true,
        name: 'Adam Sunrise',
        ingredients: [
          IngredientDefinition('Vodka', '1/2 '),
          IngredientDefinition('Lemonade', '1/2 can '),
          IngredientDefinition('Water', '1/2 '),
          IngredientDefinition('Sugar', '10 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vtuyvu1472812112.jpg',
      ),
      Cocktail(
        id: '17227',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Mix both the vermouth\'s in a shaker and strain into a cold glass. Top up with a squirt of Soda Water. 
                    ''',
        isFavourite: true,
        name: 'Addington',
        ingredients: [
          IngredientDefinition('Sweet Vermouth', '2 shots '),
          IngredientDefinition('Dry Vermouth', '1 shot '),
          IngredientDefinition('Soda Water', 'Top up with'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ib0b7g1504818925.jpg',
      ),
      Cocktail(
        id: '17228',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.martiniGlass,
        instruction: '''
                      Shake together all the ingredients and strain into a cold glass.
                    ''',
        isFavourite: true,
        name: 'Addison',
        ingredients: [
          IngredientDefinition('Gin', '1 1/2 shot '),
          IngredientDefinition('Vermouth', '1 1/2 shot '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yzva7x1504820300.jpg',
      ),
      Cocktail(
        id: '14272',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Combine ingredients in the order listed into a shaker. Fill half full with ice and shake well. Strain into glass with ice and garnish with a cherry and orange wedge.
                    ''',
        isFavourite: true,
        name: 'Addison Special',
        ingredients: [
          IngredientDefinition('Vodka', '1 shot '),
          IngredientDefinition('Grenadine', '1 tblsp '),
          IngredientDefinition('Orange juice', 'Fill with '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/4vo5651493068493.jpg',
      ),
      Cocktail(
        id: '17229',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.martiniGlass,
        instruction: '''
                      Shake together all the ingredients and strain into a cold glass.
                    ''',
        isFavourite: true,
        name: 'Adios Amigos Cocktail',
        ingredients: [
          IngredientDefinition('Rum', '1 shot '),
          IngredientDefinition('Dry Vermouth', '1/2 shot '),
          IngredientDefinition('Cognac', '1/2 shot '),
          IngredientDefinition('Gin', '1/2 shot '),
          IngredientDefinition('Fresh Lime Juice', '1/4 shot'),
          IngredientDefinition('Sugar Syrup', '1/4 shot'),
          IngredientDefinition('Water', '1/2 shot '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/8nk2mp1504819893.jpg',
      ),
      Cocktail(
        id: '17838',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir all ingredients with ice, strain contents into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Adonis Cocktail',
        ingredients: [
          IngredientDefinition('Sweet Vermouth', '3/4 oz '),
          IngredientDefinition('Sherry', '1 1/2 oz dry '),
          IngredientDefinition('Orange bitters', '1 dash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xrvruq1472812030.jpg',
      ),
      Cocktail(
        id: '17839',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour schnapps, orange juice, and cranberry juice over ice in a highball glass. Top with club soda and serve.
                    ''',
        isFavourite: true,
        name: 'Affair',
        ingredients: [
          IngredientDefinition('Strawberry schnapps', '2 oz '),
          IngredientDefinition('Orange juice', '2 oz '),
          IngredientDefinition('Cranberry juice', '2 oz '),
          IngredientDefinition('Club soda', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/h5za6y1582477994.jpg',
      ),
      Cocktail(
        id: '17840',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      In a mixing glass half-filled with ice cubes, combine all of the ingredients. Stir well. Strain into a cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Affinity',
        ingredients: [
          IngredientDefinition('Scotch', '1 1/2 oz '),
          IngredientDefinition('Sweet Vermouth', '1 oz '),
          IngredientDefinition('Dry Vermouth', '1 oz '),
          IngredientDefinition('Orange bitters', '2 dashes '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wzdtnn1582477684.jpg',
      ),
      Cocktail(
        id: '11010',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients (except lime wedge) with ice and strain into a cocktail glass. Add the wedge of lime and serve.
                    ''',
        isFavourite: true,
        name: 'After Dinner Cocktail',
        ingredients: [
          IngredientDefinition('Apricot brandy', '1 oz '),
          IngredientDefinition('Triple sec', '1 oz '),
          IngredientDefinition('Lime', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vtytxq1483387578.jpg',
      ),
      Cocktail(
        id: '13807',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      1. Pour Kahlua into shot glass to about 1/2 full. 2. Using a spoon(inverted), slowly pour in the Peppermint Schnapps until glass is about 3/4 full. Done correctly, the Schnapps will flow under the Kahlua for a clear layer. 3. Again using a spoon, but this time right side up, slowly top off the glass with a layer of Bailey\'s. Be careful to place the spoon right at the top of the Kahlua layer and to raise it as the glass fills up. Done correctly, this will provide a layer of Bailey\'s floating over the Kahlua. 4. Toss it down all at once for something like a Peppermint Pattie, WITH A BANG!!! NOTE: Best if all ingredients are chilled
                    ''',
        isFavourite: true,
        name: 'After Five',
        ingredients: [
          IngredientDefinition('Peppermint schnapps', 'null'),
          IngredientDefinition('Kahlua', 'null'),
          IngredientDefinition('Baileys irish cream', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/sk3lr91493068595.jpg',
      ),
      Cocktail(
        id: '15182',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour the vodka and creme over some ice cubes in a tall glass and fill up with juice. to make it beuty full make the top of the glass with a grenadine and sugar
                    ''',
        isFavourite: true,
        name: 'After sex',
        ingredients: [
          IngredientDefinition('Vodka', '2 cl '),
          IngredientDefinition('Creme de Banane', '1 cl '),
          IngredientDefinition('Orange juice', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xrl66i1493068702.jpg',
      ),
      Cocktail(
        id: '11011',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'After Supper Cocktail',
        ingredients: [
          IngredientDefinition('Triple sec', '1 oz '),
          IngredientDefinition('Apricot brandy', '1 oz '),
          IngredientDefinition('Lemon juice', '1/2 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/quyxwu1483387610.jpg',
      ),
      Cocktail(
        id: '13162',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Build into a suiting glass, with no ice. Cream on top if wanted. Served directly.
                    ''',
        isFavourite: true,
        name: 'Afternoon',
        ingredients: [
          IngredientDefinition('Kahlua', '1 cl '),
          IngredientDefinition('Baileys irish cream', '1 cl '),
          IngredientDefinition('Frangelico', '1 1/2 '),
          IngredientDefinition('Coffee', '4 cl hot '),
          IngredientDefinition('Cream', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vyrurp1472667777.jpg',
      ),
      Cocktail(
        id: '11012',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour all ingredients (except for lemon juice) over ice in a highball glass. Stir, add a dash of lemon juice, and serve.
                    ''',
        isFavourite: true,
        name: 'Alabama Slammer',
        ingredients: [
          IngredientDefinition('Southern Comfort', '1 oz '),
          IngredientDefinition('Amaretto', '1 oz '),
          IngredientDefinition('Sloe gin', '1/2 oz '),
          IngredientDefinition('Lemon juice', '1 dash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qtwxwr1483387647.jpg',
      ),
      Cocktail(
        id: '11013',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir all ingredients with ice, strain contents into a cocktail glass. Drop in a twist of lemon and serve.
                    ''',
        isFavourite: true,
        name: 'Alaska Cocktail',
        ingredients: [
          IngredientDefinition('Orange bitters', '2 dashes '),
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Yellow Chartreuse', '3/4 oz '),
          IngredientDefinition('Lemon peel', 'Twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wsyryt1483387720.jpg',
      ),
      Cocktail(
        id: '11014',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice and strain contents into a cocktail glass. Sprinkle nutmeg on top and serve.
                    ''',
        isFavourite: true,
        name: 'Alexander',
        ingredients: [
          IngredientDefinition('Gin', '1/2 oz '),
          IngredientDefinition('Creme de Cacao', '1/2 oz white '),
          IngredientDefinition('Light cream', '2 oz '),
          IngredientDefinition('Nutmeg', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/urystu1478253039.jpg',
      ),
      Cocktail(
        id: '11019',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Combine and shake all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Alfie Cocktail',
        ingredients: [
          IngredientDefinition('Lemon vodka', '1 1/2 oz '),
          IngredientDefinition('Triple sec', '1 dash '),
          IngredientDefinition('Pineapple juice', '1 tblsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ypxsqy1483387829.jpg',
      ),
      Cocktail(
        id: '11020',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Combine and shake all ingredients with ice, strain contents into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Algonquin',
        ingredients: [
          IngredientDefinition('Blended whiskey', '1 1/2 oz '),
          IngredientDefinition('Dry Vermouth', '1 oz '),
          IngredientDefinition('Pineapple juice', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uwryxx1483387873.jpg',
      ),
      Cocktail(
        id: '17094',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Just mix the three ingredients one to one to one
                    ''',
        isFavourite: true,
        name: 'Alice in Wonderland',
        ingredients: [
          IngredientDefinition('Amaretto', '1 shot '),
          IngredientDefinition('Grand Marnier', '1 shot '),
          IngredientDefinition('Southern Comfort', '1 shot '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/g12lj41493069391.jpg',
      ),
      Cocktail(
        id: '11021',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients (except lemon peel) with ice and strain into a cocktail glass. Top with the twist of lemon peel and serve.
                    ''',
        isFavourite: true,
        name: 'Allegheny',
        ingredients: [
          IngredientDefinition('Dry Vermouth', '1 oz '),
          IngredientDefinition('Bourbon', '1 oz '),
          IngredientDefinition('Blackberry brandy', '1 1/2 tsp '),
          IngredientDefinition('Lemon juice', '1 1/2 tsp '),
          IngredientDefinition('Lemon peel', '1 twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uwvyts1483387934.jpg',
      ),
      Cocktail(
        id: '11022',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir all ingredients with ice, strain contents into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Allies Cocktail',
        ingredients: [
          IngredientDefinition('Dry Vermouth', '1 oz '),
          IngredientDefinition('Gin', '1 oz '),
          IngredientDefinition('Kummel', '1/2 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qvprvp1483388104.jpg',
      ),
      Cocktail(
        id: '11023',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Almeria',
        ingredients: [
          IngredientDefinition('Dark rum', '2 oz '),
          IngredientDefinition('Kahlua', '1 oz '),
          IngredientDefinition('Egg white', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rwsyyu1483388181.jpg',
      ),
      Cocktail(
        id: '16082',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      Pour in order into coffee cup. Top with whipped creme and chocolate shcvings.
                    ''',
        isFavourite: true,
        name: 'Almond Chocolate Coffee',
        ingredients: [
          IngredientDefinition('Amaretto', '3/4 oz '),
          IngredientDefinition('Dark Creme de Cacao', '1/2 oz '),
          IngredientDefinition('Coffee', '8 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/jls02c1493069441.jpg',
      ),
      Cocktail(
        id: '11024',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Almond Joy',
        ingredients: [
          IngredientDefinition('Amaretto', '1/2 oz '),
          IngredientDefinition('Creme de Cacao', '1/2 oz white '),
          IngredientDefinition('Light cream', '2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xutuqs1483388296.jpg',
      ),
      Cocktail(
        id: '11025',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake well with cracked ice, strain contents into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Amaretto And Cream',
        ingredients: [
          IngredientDefinition('Amaretto', '1 1/2 oz '),
          IngredientDefinition('Light cream', '1 1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/dj8n0r1504375018.jpg',
      ),
      Cocktail(
        id: '178321',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Mix Amaretto, orange juice and sparkling wine in a jug. Add a strip orange zest to each glass, if you like.
                    ''',
        isFavourite: true,
        name: 'Amaretto fizz',
        ingredients: [
          IngredientDefinition('Amaretto', '4 cl'),
          IngredientDefinition('Orange Juice', '6 cl'),
          IngredientDefinition('White Wine', '15 cl'),
          IngredientDefinition('Orange Peel', 'Garnish with'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/92h3jz1582474310.jpg',
      ),
      Cocktail(
        id: '12792',
        category: CocktailCategory.homemadeLiqueur,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Combine sugar and 3/4 cup water in a small saucepan. Bring to a boil, stirring constantly. Reduce heat and simmer until all sugar is dissolved. Remove from heat and cool. In an aging container, combine apricot halves, almond extract, grain alcohol with 1/2 cup water, and brandy. Stir in cooled sugar syrup mixture. Cap and let age for 2 days. Remove apricot halves. (Save apricot halves, can be used for cooking). Add food coloring and glycerine. Stir, recap and continue aging for 1 to 2 months. Re-bottle as desired. Liqueur is ready to serve but will continue to improve with additional aging.
                    ''',
        isFavourite: true,
        name: 'Amaretto Liqueur',
        ingredients: [
          IngredientDefinition('Sugar', '1 cup'),
          IngredientDefinition('Water', '1/2 cup '),
          IngredientDefinition('Apricot', '2 '),
          IngredientDefinition('Almond flavoring', '1 tblsp '),
          IngredientDefinition('Grain alcohol', '1/2 cup pure '),
          IngredientDefinition('Brandy', '1 cup '),
          IngredientDefinition('Food coloring', '2 drops blue '),
          IngredientDefinition('Glycerine', '1/2 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/swqxuv1472719649.jpg',
      ),
      Cocktail(
        id: '11026',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Pour amaretto in an old-fashioned glass over crushed ice. Add the wedge of lime and serve. (A wedge of lemon may be substituted for lime, if preferred.)
                    ''',
        isFavourite: true,
        name: 'Amaretto Mist',
        ingredients: [
          IngredientDefinition('Amaretto', '1 1/2 oz '),
          IngredientDefinition('Lime', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/utpxxq1483388370.jpg',
      ),
      Cocktail(
        id: '11027',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Pour amaretto and lime juice over ice in a collins glass. Fill with club soda and serve.
                    ''',
        isFavourite: true,
        name: 'Amaretto Rose',
        ingredients: [
          IngredientDefinition('Amaretto', '1 1/2 oz '),
          IngredientDefinition('Lime juice', '1/2 oz '),
          IngredientDefinition('Club soda', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/3jm41q1493069578.jpg',
      ),
      Cocktail(
        id: '15194',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Combine all ingredients in a blender and blend at high speed until smooth. Serve in chilled glass garnished with bittersweet chocolate shavings.
                    ''',
        isFavourite: true,
        name: 'Amaretto Shake',
        ingredients: [
          IngredientDefinition('Chocolate ice-cream', '2 scoops '),
          IngredientDefinition('Brandy', '2 oz '),
          IngredientDefinition('Amaretto', '2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xk79al1493069655.jpg',
      ),
      Cocktail(
        id: '13731',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Shake and strain. Garnish with a cherry and an orange slice.
                    ''',
        isFavourite: true,
        name: 'Amaretto Sour',
        ingredients: [
          IngredientDefinition('Amaretto', '1 1/2 oz '),
          IngredientDefinition('Sour mix', '3 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xnzc541493070211.jpg',
      ),
      Cocktail(
        id: '11028',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake ingredients well with cracked ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Amaretto Stinger',
        ingredients: [
          IngredientDefinition('Amaretto', '1 1/2 oz '),
          IngredientDefinition('White Creme de Menthe', '3/4 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vvop4w1493069934.jpg',
      ),
      Cocktail(
        id: '14306',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Shake and Serve over ice
                    ''',
        isFavourite: true,
        name: 'Amaretto Stone Sour',
        ingredients: [
          IngredientDefinition('Amaretto', '1 part '),
          IngredientDefinition('Sour mix', '1 part '),
          IngredientDefinition('Orange juice', '1 part '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xwryyx1472719921.jpg',
      ),
      Cocktail(
        id: '16100',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Shake sour mix, tequila and amaretto with ice. Strain into highball glass. Add a splash of OJ. Garnish with orange slice and a cherry.
                    ''',
        isFavourite: true,
        name: 'Amaretto Stone Sour #3',
        ingredients: [
          IngredientDefinition('Sour mix', '2 oz '),
          IngredientDefinition('Amaretto', '2 oz '),
          IngredientDefinition('Tequila', '2 oz '),
          IngredientDefinition('Orange juice', 'Add splash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wutxqr1472720012.jpg',
      ),
      Cocktail(
        id: '14578',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Mix together the amaretto and orange juice. Pour into glass and then add the grenadine untill you see the sunrise.
                    ''',
        isFavourite: true,
        name: 'Amaretto Sunrise',
        ingredients: [
          IngredientDefinition('Amaretto', '1 cl '),
          IngredientDefinition('Orange juice', '4 oz '),
          IngredientDefinition('Grenadine', '1/4 cl '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/akcpsh1493070267.jpg',
      ),
      Cocktail(
        id: '17168',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Shake ingredients in bartender\'s mixer quickly, just 5 shakes. Strain out ice, serve in glass immediately with a slice of orange.
                    ''',
        isFavourite: true,
        name: 'Amaretto Sunset',
        ingredients: [
          IngredientDefinition('Triple sec', '1/2 jigger '),
          IngredientDefinition('Amaretto', '3 shots '),
          IngredientDefinition('Cider', '1/2 cup '),
          IngredientDefinition('Ice', 'Add 1/2 cup '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/apictz1493069760.jpg',
      ),
      Cocktail(
        id: '16202',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.margaritaCoupetteGlass,
        instruction: '''
                      Fill the blender with 3/4 ice. Add sweet & sour mix to the top of the ice. Add about 1" of pineapple juice, 1/2" of melon liqeur, and 1/2 to 1/4" of amaretto. Then blend the mix until it is of margaritta consistency or thinner.
                    ''',
        isFavourite: true,
        name: 'Amaretto Sweet & Sour',
        ingredients: [
          IngredientDefinition('Amaretto', 'null'),
          IngredientDefinition('Sweet and sour', 'null'),
          IngredientDefinition('Midori melon liqueur', 'null'),
          IngredientDefinition('Pineapple juice', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vswwus1472668546.jpg',
      ),
      Cocktail(
        id: '11029',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.pousseCafeGlass,
        instruction: '''
                      Pour hot tea into a pousse-cafe glass, using a spoon in glass to prevent cracking. Add amaretto, but do not stir. Top with chilled whipped cream and serve.
                    ''',
        isFavourite: true,
        name: 'Amaretto Tea',
        ingredients: [
          IngredientDefinition('Tea', '6 oz hot '),
          IngredientDefinition('Amaretto', '2 oz '),
          IngredientDefinition('Whipped cream', 'Chilled '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/b7qzo21493070167.jpg',
      ),
      Cocktail(
        id: '15941',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Pour the Campari and vermouth over ice into glass, add a splash of soda water and garnish with half orange slice.
                    ''',
        isFavourite: true,
        name: 'Americano',
        ingredients: [
          IngredientDefinition('Campari', '1 oz '),
          IngredientDefinition('Sweet Vermouth', '1 oz red '),
          IngredientDefinition('Lemon peel', 'Twist of '),
          IngredientDefinition('Orange peel', 'Twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/trwruu1478253126.jpg',
      ),
      Cocktail(
        id: '11034',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice and strain contents into a cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Angel Face',
        ingredients: [
          IngredientDefinition('Apricot brandy', '1/2 oz '),
          IngredientDefinition('Apple brandy', '1/2 oz '),
          IngredientDefinition('Gin', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vqpptp1478253178.jpg',
      ),
      Cocktail(
        id: '12794',
        category: CocktailCategory.homemadeLiqueur,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Combine all herbs, nuts and spices with vodka in a 1 quart or larger aging container. Cap tightly and shake daily for 2 weeks. Strain through a fine muslin cloth or coffee filter, discarding solids. Clean out aging container. Place liquid back in container. Place sugar and water in saucepan and stir to combine over medium heat. When sugar is completely dissolved, set aside and let cool. When cool combine with food coloring and add to liqueur liquid. Cap and allow to age and mellow in a cool, dark place for one month.
                    ''',
        isFavourite: true,
        name: 'Angelica Liqueur',
        ingredients: [
          IngredientDefinition('Angelica root', '3 tblsp chopped'),
          IngredientDefinition('Almond', '1 tblsp chopped '),
          IngredientDefinition('Allspice', '1 cracked '),
          IngredientDefinition('Cinnamon', '1 one-inch '),
          IngredientDefinition('Anise', '3-6 crushed '),
          IngredientDefinition('Coriander', '1/8 tsp powdered '),
          IngredientDefinition('Marjoram leaves', '1 tblsp fresh chopped '),
          IngredientDefinition('Vodka', '1.5 cup '),
          IngredientDefinition('Sugar', '1/2 cup granulated '),
          IngredientDefinition('Water', '1/4 cup '),
          IngredientDefinition('Food coloring', '1 drop green '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yuurps1472667672.jpg',
      ),
      Cocktail(
        id: '178325',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.wineGlass,
        instruction: '''
                      Put a couple of cubes of ice into 2 glasses and add a 50 ml measure of Aperol to each. Divide the prosecco between the glasses and then top up with soda, if you like.
                    ''',
        isFavourite: true,
        name: 'Aperol Spritz',
        ingredients: [
          IngredientDefinition('Aperol', '100 ml'),
          IngredientDefinition('Prosecco', '150 ml'),
          IngredientDefinition('Soda Water', 'Top'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/iloasq1587661955.jpg',
      ),
      Cocktail(
        id: '16289',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.punchBowl,
        instruction: '''
                      Chill both ingredients!! Mix in a tumbler and enjoy!
                    ''',
        isFavourite: true,
        name: 'Apple Grande',
        ingredients: [
          IngredientDefinition('Tequila', '3 oz '),
          IngredientDefinition('Apple cider', '12 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wqrptx1472668622.jpg',
      ),
      Cocktail(
        id: '16958',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Just mix the two liquids and sprinkle in the cinnamon. Serve either cold or heated.
                    ''',
        isFavourite: true,
        name: 'Apple Pie with A Crust',
        ingredients: [
          IngredientDefinition('Apple juice', '3 parts '),
          IngredientDefinition('Malibu rum', '1 part '),
          IngredientDefinition('Cinnamon', '3 dashes '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qspqxt1472720078.jpg',
      ),
      Cocktail(
        id: '13683',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      pour into a shot glass and present to consumer, they are expected to cover the top of the shotglass with thier palm, raise the glass, slam it on the bar and the swallow quickly.
                    ''',
        isFavourite: true,
        name: 'Apple Slammer',
        ingredients: [
          IngredientDefinition('7-Up', '1 part '),
          IngredientDefinition('Apple schnapps', '1 part '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/09yd5f1493069852.jpg',
      ),
      Cocktail(
        id: '11046',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Applecar',
        ingredients: [
          IngredientDefinition('Applejack', '1 oz '),
          IngredientDefinition('Triple sec', '1 oz '),
          IngredientDefinition('Lemon juice', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/sbffau1504389764.jpg',
      ),
      Cocktail(
        id: '16311',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Add all ingredients into mixing glass, chill and strain into cocktail glass
                    ''',
        isFavourite: true,
        name: 'Applejack',
        ingredients: [
          IngredientDefinition('Jack Daniels', '1 oz '),
          IngredientDefinition('Midori melon liqueur', '1/2 oz '),
          IngredientDefinition('Sour mix', '2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/sutyqp1479209062.jpg',
      ),
      Cocktail(
        id: '11050',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine the rum, apricot brandy, triple sec, lemon juice, and egg white. Shake well. Strain into an old-fashioned glass almost filled with ice cubes. Garnish with the orange slice.
                    ''',
        isFavourite: true,
        name: 'Apricot Lady',
        ingredients: [
          IngredientDefinition('Light rum', '1 1/2 oz '),
          IngredientDefinition('Apricot brandy', '1 oz '),
          IngredientDefinition('Triple sec', '1 tsp '),
          IngredientDefinition('Lemon juice', '1/2 oz '),
          IngredientDefinition('Egg white', '1 '),
          IngredientDefinition('Orange', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/7ityp11582579598.jpg',
      ),
      Cocktail(
        id: '15849',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.punchBowl,
        instruction: '''
                      Pour all ingrediants into a large punch bowl. Add ice and 4 oranges that are peeled and divided.
                    ''',
        isFavourite: true,
        name: 'Apricot punch',
        ingredients: [
          IngredientDefinition('Apricot brandy', '1 qt '),
          IngredientDefinition('Champagne', '4 fifth '),
          IngredientDefinition('Vodka', '1 fifth '),
          IngredientDefinition('7-Up', '4 L '),
          IngredientDefinition('Orange juice', '1/2 gal '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tuxxtp1472668667.jpg',
      ),
      Cocktail(
        id: '178319',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.martiniGlass,
        instruction: '''
                      Shake well in a shaker with ice.
Strain in a martini glass.
                    ''',
        isFavourite: true,
        name: 'Aquamarine',
        ingredients: [
          IngredientDefinition('Hpnotiq', '2 oz'),
          IngredientDefinition('Pineapple Juice', '1 oz'),
          IngredientDefinition('Banana Liqueur', '1 oz'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/zvsre31572902738.jpg',
      ),
      Cocktail(
        id: '11052',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      In an old-fashioned glass almost filled with ice cubes, combine all of the ingredients. Stir well.
                    ''',
        isFavourite: true,
        name: 'Archbishop',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Wine', '1 oz Green Ginger '),
          IngredientDefinition('Benedictine', '1 tsp '),
          IngredientDefinition('Lime', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/4g6xds1582579703.jpg',
      ),
      Cocktail(
        id: '14622',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.beerPilsner,
        instruction: '''
                      Fill glass with ice and fish, add vodka, grape soda and orange juice. DO NOT STIR!!!!! Serve well chilled.
                    ''',
        isFavourite: true,
        name: 'Arctic Fish',
        ingredients: [
          IngredientDefinition('Vodka', '1/3 part '),
          IngredientDefinition('Grape soda', '1/3 part '),
          IngredientDefinition('Orange juice', '1/3 part '),
          IngredientDefinition('Ice', 'lots '),
          IngredientDefinition('Candy', '1 dash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ttsvwy1472668781.jpg',
      ),
      Cocktail(
        id: '17118',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Blend all ingredients in a blender on high until ice is finely crushed. It should be of a slushy consistency. Pour immediately and serve.
                    ''',
        isFavourite: true,
        name: 'Arctic Mouthwash',
        ingredients: [
          IngredientDefinition('Maui', '5 oz blue '),
          IngredientDefinition('Mountain Dew', '5 oz '),
          IngredientDefinition('Ice', 'cubes'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wqstwv1478963735.jpg',
      ),
      Cocktail(
        id: '11053',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.champagneFlute,
        instruction: '''
                      Put creme de menthe into a champagne flute. Fill with chilled champagne and serve.
                    ''',
        isFavourite: true,
        name: 'Arise My Love',
        ingredients: [
          IngredientDefinition('Champagne', 'Chilled '),
          IngredientDefinition('Green Creme de Menthe', '1 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wyrrwv1441207432.jpg',
      ),
      Cocktail(
        id: '16354',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Pour all ingredients into shot glass and slam !!!!
                    ''',
        isFavourite: true,
        name: 'Arizona Antifreeze',
        ingredients: [
          IngredientDefinition('Vodka', '1/3 oz '),
          IngredientDefinition('Midori melon liqueur', '1/3 oz '),
          IngredientDefinition('Sweet and sour', '1/3 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/dbtylp1493067262.jpg',
      ),
      Cocktail(
        id: '14584',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.hurricaneGlass,
        instruction: '''
                      Place ice cubes in the hurricane glass . Add the 2 HEAPING shots of Absolute Vodka (Note: You can add as many shots of Absolute as you want!) Fill the rest of glass with the Arizona Icetea with lemon. Stir to mix using a spoon. Drink up and enjoy!!!!!!!
                    ''',
        isFavourite: true,
        name: 'Arizona Stingers',
        ingredients: [
          IngredientDefinition('Absolut Vodka', '2 shots '),
          IngredientDefinition('Iced tea', '12 oz lemon '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/y7w0721493068255.jpg',
      ),
      Cocktail(
        id: '17074',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.hurricaneGlass,
        instruction: '''
                      Just mix in the shots of rum, vodka, and tequila. Add splashes of the three juices, heavy on the pineapple. Top off with grenadine. Crushed ice should already be in glass. Top off the glass with a pineapple wedge.
                    ''',
        isFavourite: true,
        name: 'Arizona Twister',
        ingredients: [
          IngredientDefinition('Vodka', '1 shot '),
          IngredientDefinition('Malibu rum', '1 shot '),
          IngredientDefinition('Gold tequila', '1 shot '),
          IngredientDefinition('Orange juice', '1 splash '),
          IngredientDefinition('Pineapple juice', '1 splash '),
          IngredientDefinition('Cream of coconut', '1 splash '),
          IngredientDefinition('Grenadine', '1 dash '),
          IngredientDefinition('Ice', 'crushed '),
          IngredientDefinition('Pineapple', '1 wedge '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ido1j01493068134.jpg',
      ),
      Cocktail(
        id: '17066',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Pour Vodka, Gin and lime cordial into glass, and top up with crushed ice. Wait for ice to melt slightly and sip without a straw.
                    ''',
        isFavourite: true,
        name: 'Army special',
        ingredients: [
          IngredientDefinition('Vodka', '30 ml '),
          IngredientDefinition('Gin', '30 ml '),
          IngredientDefinition('Lime juice cordial', '45 ml '),
          IngredientDefinition('Ice', '1/2 glass crushed '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/55muhh1493068062.jpg',
      ),
      Cocktail(
        id: '11054',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.whiskeySourGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine the gin, Grand Marnier, and lemon juice. Shake well. Strain into a sour glass and garnish with the lemon twist.
                    ''',
        isFavourite: true,
        name: 'Arthur Tompkins',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Grand Marnier', '1/2 oz '),
          IngredientDefinition('Lemon juice', '2 tsp '),
          IngredientDefinition('Lemon peel', '1 twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/7onfhz1493067921.jpg',
      ),
      Cocktail(
        id: '11055',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Artillery',
        ingredients: [
          IngredientDefinition('Sweet Vermouth', '1 1/2 tsp '),
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Bitters', '2 dashes '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/g1vnbe1493067747.jpg',
      ),
      Cocktail(
        id: '12870',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.punchBowl,
        instruction: '''
                      Combine all the ingredients in a large punch bowl with a block of ice. If found too dry, sugar syrup may be added. Decorate with twists of lemon peel.
                    ''',
        isFavourite: true,
        name: 'Artillery Punch',
        ingredients: [
          IngredientDefinition('Tea', '1 quart black '),
          IngredientDefinition('Rye whiskey', '1 quart '),
          IngredientDefinition('Red wine', '1 fifth '),
          IngredientDefinition('Rum', '1 pint Jamaican '),
          IngredientDefinition('Brandy', '1/2 pint '),
          IngredientDefinition('Benedictine', '1 1/2 oz '),
          IngredientDefinition('Orange juice', '1 pint '),
          IngredientDefinition('Lemon juice', '1/2 pint '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/9a4vqb1493067692.jpg',
      ),
      Cocktail(
        id: '13938',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour Vodka and Gin over ice, add Tonic and Stir
                    ''',
        isFavourite: true,
        name: 'AT&T',
        ingredients: [
          IngredientDefinition('Absolut Vodka', '1 oz '),
          IngredientDefinition('Gin', '1 oz '),
          IngredientDefinition('Tonic water', '4 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rhhwmp1493067619.jpg',
      ),
      Cocktail(
        id: '13423',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Shake all the ingredients, top the drink with soda. Garnish with a slice of orange.
                    ''',
        isFavourite: true,
        name: 'Atlantic Sun',
        ingredients: [
          IngredientDefinition('Vodka', '2 cl Smirnoff '),
          IngredientDefinition('Southern Comfort', '2 cl '),
          IngredientDefinition('Passion fruit syrup', '2 cl '),
          IngredientDefinition('Sweet and sour', '6 cl '),
          IngredientDefinition('Club soda', '1 dash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/doyxqb1493067556.jpg',
      ),
      Cocktail(
        id: '13086',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      In a shaker, place lemonade, vodka, blue Curacao, and triple sec together. Shake with ice and strain into glass. Add sugar to taste
                    ''',
        isFavourite: true,
        name: 'Atomic Lokade',
        ingredients: [
          IngredientDefinition('Lemonade', '5 oz '),
          IngredientDefinition('Vodka', '1 oz '),
          IngredientDefinition('Blue Curacao', '1/2 oz '),
          IngredientDefinition('Triple sec', '1/2 oz '),
          IngredientDefinition('Sugar', 'null'),
          IngredientDefinition('Ice', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/n3zfrh1493067412.jpg',
      ),
      Cocktail(
        id: '17020',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Mix in spread glass over ice. Strain and pour in shot glass. Sit down before shotting. ENJOY!!
                    ''',
        isFavourite: true,
        name: 'Auburn Headbanger',
        ingredients: [
          IngredientDefinition('Jägermeister', '1 oz '),
          IngredientDefinition('Goldschlager', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vw7iv91493067320.jpg',
      ),
      Cocktail(
        id: '12756',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Mix and fill up with soda water. Drunk by finns on a sunny day any time of the year and day.
                    ''',
        isFavourite: true,
        name: 'Autodafé',
        ingredients: [
          IngredientDefinition('Vodka', '4 cl '),
          IngredientDefinition('Lime juice', '1 dash '),
          IngredientDefinition('Soda water', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/7dkf0i1487602928.jpg',
      ),
      Cocktail(
        id: '16419',
        category: CocktailCategory.milkFloatShake,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Mix in highball glass over ice, shake well.
                    ''',
        isFavourite: true,
        name: 'Avalanche',
        ingredients: [
          IngredientDefinition('Crown Royal', '1 shot '),
          IngredientDefinition('Kahlua', '1 shot '),
          IngredientDefinition('Cream', 'Fill with '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uppqty1472720165.jpg',
      ),
      Cocktail(
        id: '15266',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Fill a tall glass with ice. Layer the Finlandia Vodka, lemon and apple juices, Pisang Ambon, and top up with lemonade. Stir slightly and garnish with a spiralled cucumber skin and a red cherry. The cucumber provides zest and looks attractive. This drink, created by Timo Haimi, took first prize in the 1991 Finlandia Vodka Long Drink Competition.
                    ''',
        isFavourite: true,
        name: 'Avalon',
        ingredients: [
          IngredientDefinition('Vodka', '3 parts'),
          IngredientDefinition('Pisang Ambon', '1 part '),
          IngredientDefinition('Apple juice', '6 parts '),
          IngredientDefinition('Lemon juice', '1 1/2 part '),
          IngredientDefinition('Lemonade', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/3k9qic1493068931.jpg',
      ),
      Cocktail(
        id: '17180',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Add all ingredients into cocktail shaker filled with ice. Shake well and strain into cocktail glass. Garnish with a cherry.
                    ''',
        isFavourite: true,
        name: 'Aviation',
        ingredients: [
          IngredientDefinition('Gin', '4.5 cl'),
          IngredientDefinition('lemon juice', '1.5 cl'),
          IngredientDefinition('maraschino liqueur', '1.5 cl'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ruutxt1478253328.jpg',
      ),
      Cocktail(
        id: '14364',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.punchBowl,
        instruction: '''
                      Mix all ingredients in a pitcher. Mix thoroughly and pour into whatever is available, the bigger the better! This drink packs a big punch, so don't over do it.
                    ''',
        isFavourite: true,
        name: 'Aztec Punch',
        ingredients: [
          IngredientDefinition('Lemonade', '1 can '),
          IngredientDefinition('Vodka', '5 oz '),
          IngredientDefinition('Rum', '7 oz '),
          IngredientDefinition('Ginger ale', 'About 1 bottle '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uqwuyp1454514591.jpg',
      ),
      Cocktail(
        id: '15853',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Layer ingredients into a shot glass. Serve with a stirrer.
                    ''',
        isFavourite: true,
        name: 'B-52',
        ingredients: [
          IngredientDefinition('Baileys irish cream', '1/3 '),
          IngredientDefinition('Grand Marnier', '1/3 '),
          IngredientDefinition('Kahlua', '1/4 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/5a3vg61504372070.jpg',
      ),
      Cocktail(
        id: '13332',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Layer the Kahlua, Sambucca and Grand Marnier into a shot glas in that order. Better than B-52
                    ''',
        isFavourite: true,
        name: 'B-53',
        ingredients: [
          IngredientDefinition('Kahlua', '1/3 shot '),
          IngredientDefinition('Sambuca', '1/3 shot '),
          IngredientDefinition('Grand Marnier', '1/3 shot '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rwqxrv1461866023.jpg',
      ),
      Cocktail(
        id: '15511',
        category: CocktailCategory.milkFloatShake,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Leave ice-cream out for about 10 minutes. Add ingredients in order, stir with chopstick (butter knife or spoon works too). Consume immediately and often. Nice and light, great for following a heavy drink.
                    ''',
        isFavourite: true,
        name: 'Baby Eskimo',
        ingredients: [
          IngredientDefinition('Kahlua', '2 oz '),
          IngredientDefinition('Milk', '8 oz '),
          IngredientDefinition('Vanilla ice-cream', '2 scoops '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wywrtw1472720227.jpg',
      ),
      Cocktail(
        id: '17079',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Pour Kahlua, almost filling shot glass. Then, carefully pour Baileys, using wall of shot glass. This will give the "Guinness" its "head".
                    ''',
        isFavourite: true,
        name: 'Baby Guinness',
        ingredients: [
          IngredientDefinition('Kahlua', '2 1/2 oz '),
          IngredientDefinition('Baileys irish cream', '1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rvyvxs1473482359.jpg',
      ),
      Cocktail(
        id: '17183',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake together with ice. Strain into glass and serve.
                    ''',
        isFavourite: true,
        name: 'Bacardi Cocktail',
        ingredients: [
          IngredientDefinition('Light rum', '1 3/4 oz Bacardi '),
          IngredientDefinition('Lime juice', '1 oz '),
          IngredientDefinition('Sugar syrup', '1/2 tsp '),
          IngredientDefinition('Grenadine', '1 dash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/n433t21504348259.jpg',
      ),
      Cocktail(
        id: '17267',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Add 2 parts club soda or more or less to taste.

Mix it all together and pour over a bunch of ice. Drink with a straw.
                    ''',
        isFavourite: true,
        name: 'Bahama Mama',
        ingredients: [
          IngredientDefinition('Rum', '3 parts'),
          IngredientDefinition('Dark Rum', '1 part'),
          IngredientDefinition('Banana liqueur', '1 part'),
          IngredientDefinition('Grenadine', '1 part'),
          IngredientDefinition('Pineapple Juice', '2 parts'),
          IngredientDefinition('Orange Juice', '2 parts'),
          IngredientDefinition('Sweet and Sour', '1 part'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tyb4a41515793339.jpg',
      ),
      Cocktail(
        id: '14510',
        category: CocktailCategory.softDrinkSoda,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Blend ingredients for 30 seconds. Definitely refreshing for a hot summer\'s day !
                    ''',
        isFavourite: true,
        name: 'Bailey\'s Dream Shake',
        ingredients: [
          IngredientDefinition('Baileys irish cream', '2 oz '),
          IngredientDefinition('Vanilla ice-cream', '2 scoops '),
          IngredientDefinition('Cream', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qxrvqw1472718959.jpg',
      ),
      Cocktail(
        id: '11060',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      In a mixing glass half-filled with ice cubes, combine all of the ingredients. Stir well. Strain into a cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Balmoral',
        ingredients: [
          IngredientDefinition('Scotch', '1 1/2 oz '),
          IngredientDefinition('Sweet Vermouth', '1/2 oz '),
          IngredientDefinition('Dry Vermouth', '1/2 oz '),
          IngredientDefinition('Bitters', '2 dashes '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vysuyq1441206297.jpg',
      ),
      Cocktail(
        id: '178320',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.notSpecified,
        instruction: '''
                      Serve over ice.
                    ''',
        isFavourite: true,
        name: 'Banana Cream Pi',
        ingredients: [
          IngredientDefinition('Malibu Rum', '1 oz'),
          IngredientDefinition('Banana Liqueur', '1 oz'),
          IngredientDefinition('Pineapple Juice', 'Top'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/m5p67n1582474609.jpg',
      ),
      Cocktail(
        id: '11064',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.champagneFlute,
        instruction: '''
                      Pour all ingredients into shaker with ice cubes. Shake well. Strain in chilled cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Banana Daiquiri',
        ingredients: [
          IngredientDefinition('Light rum', '1 1/2 oz '),
          IngredientDefinition('Triple sec', '1 tblsp '),
          IngredientDefinition('Banana', '1 '),
          IngredientDefinition('Lime juice', '1 1/2 oz '),
          IngredientDefinition('Sugar', '1 tsp '),
          IngredientDefinition('Cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/k1xatq1504389300.jpg',
      ),
      Cocktail(
        id: '17209',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.margaritaGlass,
        instruction: '''
                      Shake pour ingredients with ice. Strain into glass, top with Sparkling wine.
                    ''',
        isFavourite: true,
        name: 'Barracuda',
        ingredients: [
          IngredientDefinition('Rum', '4.5 cl'),
          IngredientDefinition('Galliano', '1.5 cl'),
          IngredientDefinition('Pineapple Juice', '6 cl'),
          IngredientDefinition('Lime Juice', ' 1 dash'),
          IngredientDefinition('Prosecco', 'top up '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/jwmr1x1504372337.jpg',
      ),
      Cocktail(
        id: '178317',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.martiniGlass,
        instruction: '''
                      Shake ingredients with crushed ice
Garnish with orange peel

                    ''',
        isFavourite: true,
        name: 'Bee\'s Knees',
        ingredients: [
          IngredientDefinition('Gold rum', '6 cl'),
          IngredientDefinition('Orange Juice', '2 cl'),
          IngredientDefinition('Lime Juice', '2 cl'),
          IngredientDefinition('Triple Sec', '2 jiggers'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tx8ne41582475326.jpg',
      ),
      Cocktail(
        id: '14071',
        category: CocktailCategory.softDrinkSoda,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Just pour all ingredients in the glass and stir...
                    ''',
        isFavourite: true,
        name: 'Belgian Blue',
        ingredients: [
          IngredientDefinition('Vodka', '2 cl '),
          IngredientDefinition('Coconut liqueur', '1 cl '),
          IngredientDefinition('Blue Curacao', '1 cl '),
          IngredientDefinition('Sprite', 'Fill with '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/jylbrq1582580066.jpg',
      ),
      Cocktail(
        id: '17195',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.champagneFlute,
        instruction: '''
                      Pour peach purée into chilled flute, add sparkling wine. Stir gently.
                    ''',
        isFavourite: true,
        name: 'Bellini',
        ingredients: [
          IngredientDefinition('Champagne', '6 oz '),
          IngredientDefinition('Peach schnapps', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/eaag491504367543.jpg',
      ),
      Cocktail(
        id: '16176',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Add ice cubes to shaker.
Add vodka.
Add peach schnapps.
Add peach nectar.
Shake.
Strain into glass.
Add lemon twist peel.
                    ''',
        isFavourite: true,
        name: 'Bellini Martini',
        ingredients: [
          IngredientDefinition('Ice', '8 cubes'),
          IngredientDefinition('Vodka', '3 oz '),
          IngredientDefinition('Peach nectar', '1.5 oz '),
          IngredientDefinition('Peach schnapps', '1.5 oz '),
          IngredientDefinition('Lemon peel', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/3h9wv51504389379.jpg',
      ),
      Cocktail(
        id: '11084',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour brandy, gin, and dry vermouth into a highball glass over ice cubes. Fill with carbonated water and stir. Add the twist of lemon and serve. (Ginger ale may be substituted for carbonated water, if preferred.)
                    ''',
        isFavourite: true,
        name: 'Bermuda Highball',
        ingredients: [
          IngredientDefinition('Brandy', '3/4 oz '),
          IngredientDefinition('Gin', '3/4 oz '),
          IngredientDefinition('Dry Vermouth', '3/4 oz '),
          IngredientDefinition('Carbonated water', 'null'),
          IngredientDefinition('Lemon peel', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qrvtww1441206528.jpg',
      ),
      Cocktail(
        id: '12876',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Add all ingredients to large bowl. Stir gently. Serve chilled.
                    ''',
        isFavourite: true,
        name: 'Berry Deadly',
        ingredients: [
          IngredientDefinition('Everclear', '2 pint '),
          IngredientDefinition('Wine', '1 bottle Boone Strawberry Hill '),
          IngredientDefinition('Orange juice', '1/2 gal '),
          IngredientDefinition('Kool-Aid', '1 gal Tropical Berry '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/zk74k21593351065.jpg',
      ),
      Cocktail(
        id: '17184',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Pour all ingredients into shaker with ice cubes, shake, strain into chilled cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Between The Sheets',
        ingredients: [
          IngredientDefinition('Brandy', '1 oz '),
          IngredientDefinition('Light rum', '1 oz '),
          IngredientDefinition('Triple sec', '1 oz '),
          IngredientDefinition('Lemon juice', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/of1rj41504348346.jpg',
      ),
      Cocktail(
        id: '16986',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Mix all ingredients, and pour over ice.
                    ''',
        isFavourite: true,
        name: 'Bible Belt',
        ingredients: [
          IngredientDefinition('Southern Comfort', '2 oz '),
          IngredientDefinition('Triple sec', '1/2 oz '),
          IngredientDefinition('Lime', '2 wedges '),
          IngredientDefinition('Sour mix', '2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/6bec6v1503563675.jpg',
      ),
      Cocktail(
        id: '13222',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Pour ingredients into 1 ounce shot glass
                    ''',
        isFavourite: true,
        name: 'Big Red',
        ingredients: [
          IngredientDefinition('Irish cream', '1/2 oz '),
          IngredientDefinition('Goldschlager', '1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yqwuwu1441248116.jpg',
      ),
      Cocktail(
        id: '17254',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir in mixing glass with ice and strain

                    ''',
        isFavourite: true,
        name: 'Bijou',
        ingredients: [
          IngredientDefinition('Orange Bitters', '1 dash'),
          IngredientDefinition('Green Chartreuse', '1 oz'),
          IngredientDefinition('Gin', '1 oz'),
          IngredientDefinition('Sweet Vermouth', '1 oz'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rysb3r1513706985.jpg',
      ),
      Cocktail(
        id: '13282',
        category: CocktailCategory.beer,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.pintGlass,
        instruction: '''
                      Fill pint glass half full with Bass. Next pour Guiness over a spoon slowly until glass is full. If done correctly the Guiness will stay on top and the Bass on bottom hence the name Black & Tan.
                    ''',
        isFavourite: true,
        name: 'Black & Tan',
        ingredients: [
          IngredientDefinition('Ale', '1 part Bass pale '),
          IngredientDefinition('Guinness stout', '1 part '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rwpswp1454511017.jpg',
      ),
      Cocktail(
        id: '16403',
        category: CocktailCategory.beer,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.beerPilsner,
        instruction: '''
                      CAREFULLY to avoid explosive head formation: Pour Beer glass half full of favorite rootbeer and top off with Guinness.
                    ''',
        isFavourite: true,
        name: 'Black and Brown',
        ingredients: [
          IngredientDefinition('Guinness stout', '1/2 '),
          IngredientDefinition('Root beer', '1/2 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wwuvxv1472668899.jpg',
      ),
      Cocktail(
        id: '15951',
        category: CocktailCategory.milkFloatShake,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      In a blender put ice cubes, chocolate syrup, cherry brandy, vodka, and milk. Blend very well.
                    ''',
        isFavourite: true,
        name: 'Black Forest Shake',
        ingredients: [
          IngredientDefinition('Ice', 'cubes'),
          IngredientDefinition('Chocolate syrup', 'null'),
          IngredientDefinition('Cherry brandy', 'null'),
          IngredientDefinition('Vodka', 'null'),
          IngredientDefinition('Milk', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xxtxsu1472720505.jpg',
      ),
      Cocktail(
        id: '11102',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Pour the ingredients into an old fashioned glass filled with ice cubes. Stir gently.
                    ''',
        isFavourite: true,
        name: 'Black Russian',
        ingredients: [
          IngredientDefinition('Coffee liqueur', '3/4 oz '),
          IngredientDefinition('Vodka', '1 1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/2k5gbb1504367689.jpg',
      ),
      Cocktail(
        id: '11106',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir sloe gin and vermouth with ice and strain into a cocktail glass. Add the twist of lemon peel and serve.
                    ''',
        isFavourite: true,
        name: 'Blackthorn',
        ingredients: [
          IngredientDefinition('Sweet Vermouth', '1 oz '),
          IngredientDefinition('Sloe gin', '1 1/2 oz '),
          IngredientDefinition('Lemon peel', '1 twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xvswvy1441209430.jpg',
      ),
      Cocktail(
        id: '16295',
        category: CocktailCategory.softDrinkSoda,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Pour Shot of Rum over slice of orange. Fill the remaining space in glass half way full of surge or similar drink. Finish off glass with cranberry juice. Be carefull, warm surge may foam over the glass.
                    ''',
        isFavourite: true,
        name: 'Bleeding Surgeon',
        ingredients: [
          IngredientDefinition('Dark rum', '1 shot '),
          IngredientDefinition('Orange', '1 slice '),
          IngredientDefinition('Surge', '1/2 glass '),
          IngredientDefinition('Cranberry juice', '1/2 glass '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/usuvvr1472719118.jpg',
      ),
      Cocktail(
        id: '14356',
        category: CocktailCategory.milkFloatShake,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Fill glass with ice. Add all liquers. Add milk. shake.
                    ''',
        isFavourite: true,
        name: 'Blind Russian',
        ingredients: [
          IngredientDefinition('Baileys irish cream', '3/4 oz '),
          IngredientDefinition('Godiva liqueur', '3/4 oz '),
          IngredientDefinition('Kahlua', '3/4 oz '),
          IngredientDefinition('Butterscotch schnapps', '1/2 oz '),
          IngredientDefinition('Milk', ' to fill'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wxuqvr1472720408.jpg',
      ),
      Cocktail(
        id: '11112',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Shake all ingredients (except lemon slice) with cracked ice and strain into an old-fashioned glass over ice cubes. Add the slice of lemon and serve.
                    ''',
        isFavourite: true,
        name: 'Bloody Maria',
        ingredients: [
          IngredientDefinition('Tequila', '1 oz '),
          IngredientDefinition('Tomato juice', '2 oz '),
          IngredientDefinition('Lemon juice', '1 dash '),
          IngredientDefinition('Tabasco sauce', '1 dash '),
          IngredientDefinition('Celery salt', '1 dash '),
          IngredientDefinition('Lemon', '1 slice '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yz0j6z1504389461.jpg',
      ),
      Cocktail(
        id: '11113',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Stirring gently, pour all ingredients into highball glass. Garnish.
                    ''',
        isFavourite: true,
        name: 'Bloody Mary',
        ingredients: [
          IngredientDefinition('Vodka', '1 1/2 oz '),
          IngredientDefinition('Tomato juice', '3 oz '),
          IngredientDefinition('Lemon juice', '1 dash '),
          IngredientDefinition('Worcestershire sauce', '1/2 tsp '),
          IngredientDefinition('Tabasco sauce', '2-3 drops '),
          IngredientDefinition('Lime', '1 wedge '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/t6caa21582485702.jpg',
      ),
      Cocktail(
        id: '178312',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.punchBowl,
        instruction: '''
                      Place the thawed strawberries in a large bowl. Mash them with a fork to ensure no large chunks.

Step
2

 
In a punch bowl or pitcher, combine mashed strawberries, lime pulp and soda. Mix well.

Step
3

 
Add blueberries and raisins. They will float and look like bugs in the punch.
                    ''',
        isFavourite: true,
        name: 'Bloody Punch',
        ingredients: [
          IngredientDefinition('Vodka', '10 shots'),
          IngredientDefinition('Strawberries', '3 cups'),
          IngredientDefinition('Lime Juice', '1/2 cup'),
          IngredientDefinition('Lemon-lime soda', '12 oz'),
          IngredientDefinition('Raisins', '1 cup'),
          IngredientDefinition('Blueberries', '1 cup'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/5yhd3n1571687385.jpg',
      ),
      Cocktail(
        id: '17268',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      If each part is 1/2 oz then use about 2.5 cups of ice.

Blend it all together. 
Drink it with a big straw if you have one.


                    ''',
        isFavourite: true,
        name: 'Blue Hurricane',
        ingredients: [
          IngredientDefinition('Rum', '4 parts'),
          IngredientDefinition('Dark Rum', '2 parts'),
          IngredientDefinition('Passoa', '1 part'),
          IngredientDefinition('Blue Curacao', '1 part'),
          IngredientDefinition('Sweet and Sour', '6 parts'),
          IngredientDefinition('Ice', 'cubes'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/nwx02s1515795822.jpg',
      ),
      Cocktail(
        id: '11117',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour vodka and curacao over ice in a highball glass. Fill with lemonade, top with the cherry, and serve.
                    ''',
        isFavourite: true,
        name: 'Blue Lagoon',
        ingredients: [
          IngredientDefinition('Vodka', '1 oz '),
          IngredientDefinition('Blue Curacao', '1 oz '),
          IngredientDefinition('Lemonade', 'null'),
          IngredientDefinition('Cherry', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/5wm4zo1582579154.jpg',
      ),
      Cocktail(
        id: '11118',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Rub rim of cocktail glass with lime juice. Dip rim in coarse salt. Shake tequila, blue curacao, and lime juice with ice, strain into the salt-rimmed glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Blue Margarita',
        ingredients: [
          IngredientDefinition('Tequila', '1 1/2 oz '),
          IngredientDefinition('Blue Curacao', '1 oz '),
          IngredientDefinition('Lime juice', '1 oz '),
          IngredientDefinition('Salt', 'Coarse '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/bry4qh1582751040.jpg',
      ),
      Cocktail(
        id: '11119',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into an old-fashioned glass almost filled with ice cubes.
                    ''',
        isFavourite: true,
        name: 'Blue Mountain',
        ingredients: [
          IngredientDefinition('Añejo rum', '1 1/2 oz '),
          IngredientDefinition('Tia maria', '1/2 oz '),
          IngredientDefinition('Vodka', '1/2 oz '),
          IngredientDefinition('Orange juice', '1 oz '),
          IngredientDefinition('Lemon juice', '1 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/bih7ln1582485506.jpg',
      ),
      Cocktail(
        id: '178336',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Muddle the blueberries with the other ingredients and serve in a highball glass. Garnish with mint and a half slice of lime.
                    ''',
        isFavourite: true,
        name: 'Blueberry Mojito',
        ingredients: [
          IngredientDefinition('Dark Rum', '2 shots'),
          IngredientDefinition('Lime Juice', '1 shot'),
          IngredientDefinition('Sugar', 'Dash'),
          IngredientDefinition('Blueberries', 'Whole'),
          IngredientDefinition('Lemon-lime soda', 'Top'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/07iep51598719977.jpg',
      ),
      Cocktail(
        id: '11120',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      In a mixing glass half-filled with crushed ice, combine the gin, triple sec, Curacao, and bitters. Stir well. Strain into a cocktail glass and garnish with the lemon twist and the cherry.
                    ''',
        isFavourite: true,
        name: 'Bluebird',
        ingredients: [
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Triple sec', '1/2 oz '),
          IngredientDefinition('Blue Curacao', '1/2 oz '),
          IngredientDefinition('Bitters', '2 dashes '),
          IngredientDefinition('Maraschino cherry', '1 '),
          IngredientDefinition('Lemon peel', '1 twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/5jhyd01582579843.jpg',
      ),
      Cocktail(
        id: '13395',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Layer in a 2 oz shot glass or pony glass
                    ''',
        isFavourite: true,
        name: 'Bob Marley',
        ingredients: [
          IngredientDefinition('Midori melon liqueur', '1/2 oz '),
          IngredientDefinition('Jägermeister', '1/2 oz '),
          IngredientDefinition('Goldschlager', '1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rrqrst1477140664.jpg',
      ),
      Cocktail(
        id: '11121',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir all ingredients (except lemon peel) with ice and strain into a cocktail glass. Add the twist of lemon peel and serve.
                    ''',
        isFavourite: true,
        name: 'Bobby Burns Cocktail',
        ingredients: [
          IngredientDefinition('Sweet Vermouth', '1 1/2 oz '),
          IngredientDefinition('Scotch', '1 1/2 oz '),
          IngredientDefinition('Benedictine', '1 1/4 tsp '),
          IngredientDefinition('Lemon peel', '1 twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/km6se51484411608.jpg',
      ),
      Cocktail(
        id: '17242',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.balloonGlass,
        instruction: '''
                      Add the Bombay Sapphire, Crème de Cassis and lime juice to a balloon glass and swirl well to mix.
Fill the glass with good quality cubed ice.
Top up with chilled and freshly opened Fever-Tree Ginger Beer.
Gently stir to combine, top with a gently squeezed lime wedge and finish with a fresh ginger slice.
                    ''',
        isFavourite: true,
        name: 'Bombay Cassis',
        ingredients: [
          IngredientDefinition('Gin', '50 ml'),
          IngredientDefinition('Creme de Cassis', '20 ml'),
          IngredientDefinition('Fresh Lime Juice', '15 ml'),
          IngredientDefinition('Ginger beer', '75 ml'),
          IngredientDefinition('Lime', '1'),
          IngredientDefinition('Ginger', '1 long strip'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/h1e0e51510136907.jpg',
      ),
      Cocktail(
        id: '11124',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      In a mixing glass half-filled with ice cubes, combine the gin, vermouth, bitters, and maraschino liqueur. Stir well. Strain into a cocktail glass and garnish with the cherry.
                    ''',
        isFavourite: true,
        name: 'Boomerang',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Dry Vermouth', '1/2 oz '),
          IngredientDefinition('Bitters', '2 dashes '),
          IngredientDefinition('Maraschino liqueur', '1/2 tsp '),
          IngredientDefinition('Maraschino cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/3m6yz81504389551.jpg',
      ),
      Cocktail(
        id: '17221',
        category: CocktailCategory.milkFloatShake,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.masonJar,
        instruction: '''
                      Place the snickers bars in a plastic bag and roll over them with a rolling pin until crushed. Add crushed snickers pieces, ice cream, milk, caramel sauce, chocolate sauce, and chocolate liquor to a blender. Blend until shake is thick and frothy. Pour into glasses and top with chocolate liquor and whip cream.
                    ''',
        isFavourite: true,
        name: 'Boozy Snickers Milkshake',
        ingredients: [
          IngredientDefinition('Vanilla Ice-Cream', '3 cups '),
          IngredientDefinition('Milk', '1 cup '),
          IngredientDefinition('Godiva liqueur', '1/2 cup '),
          IngredientDefinition('Whipped Cream', 'for topping'),
          IngredientDefinition('caramel sauce', '4 tablespoons'),
          IngredientDefinition('chocolate sauce', '4 tablespoons'),
          IngredientDefinition('Mini-snickers bars', '15'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/861tzm1504784164.jpg',
      ),
      Cocktail(
        id: '11128',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Boston Sidecar',
        ingredients: [
          IngredientDefinition('Light rum', '3/4 oz '),
          IngredientDefinition('Brandy', '3/4 oz '),
          IngredientDefinition('Triple sec', '3/4 oz '),
          IngredientDefinition('Lime', 'Juice of 1/2 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qzs5d11504365962.jpg',
      ),
      Cocktail(
        id: '11129',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.whiskeySourGlass,
        instruction: '''
                      Shake juice of lemon, powdered sugar, blended whiskey, and egg white with cracked ice and strain into a whiskey sour glass. Add the slice of lemon, top with the cherry, and serve.
                    ''',
        isFavourite: true,
        name: 'Boston Sour',
        ingredients: [
          IngredientDefinition('Blended whiskey', '2 oz '),
          IngredientDefinition('Lemon', '1 slice '),
          IngredientDefinition('Powdered sugar', '1 tsp '),
          IngredientDefinition('Egg white', '1 '),
          IngredientDefinition('Cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/kxlgbi1504366100.jpg',
      ),
      Cocktail(
        id: '17251',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.martiniGlass,
        instruction: '''
                      Stir with ice, strain, garnish and serve.
                    ''',
        isFavourite: true,
        name: 'Boulevardier',
        ingredients: [
          IngredientDefinition('Campari', '1 oz'),
          IngredientDefinition('Sweet Vermouth', '1 oz'),
          IngredientDefinition('Rye whiskey', '1 1/4 oz'),
          IngredientDefinition('Orange Peel', '1'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/km84qi1513705868.jpg',
      ),
      Cocktail(
        id: '178331',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.margaritaGlass,
        instruction: '''
                      Add the spirits into a shaker as well as the pineapple juice, strain into a Margarita glass. Top with Prosecco and garnish with Blueberries.
                    ''',
        isFavourite: true,
        name: 'Bounty Hunter',
        ingredients: [
          IngredientDefinition('Rum', '1 shot'),
          IngredientDefinition('Coconut Liqueur', '1 shot'),
          IngredientDefinition('Blueberries', 'Garnish with'),
          IngredientDefinition('Pineapple Juice', 'Dash'),
          IngredientDefinition('Prosecco', 'Top'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/t8bgxl1596018175.jpg',
      ),
      Cocktail(
        id: '11146',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine the sugar, water, lemon juice, and bourbon. Shake well. Strain well. Strain into a highball glass. Garnish with the lemon twist.
                    ''',
        isFavourite: true,
        name: 'Bourbon Sling',
        ingredients: [
          IngredientDefinition('Sugar', '1 tsp superfine '),
          IngredientDefinition('Water', '2 tsp '),
          IngredientDefinition('Lemon juice', '1 oz '),
          IngredientDefinition('Bourbon', '2 oz '),
          IngredientDefinition('Lemon peel', '1 twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/3s36ql1504366260.jpg',
      ),
      Cocktail(
        id: '11147',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.whiskeySourGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine the bourbon, lemon juice, and sugar. Shake well. Strain into a whiskey sour glass, garnish with the orange slice and cherry.
                    ''',
        isFavourite: true,
        name: 'Bourbon Sour',
        ingredients: [
          IngredientDefinition('Bourbon', '2 oz '),
          IngredientDefinition('Lemon juice', '1 oz '),
          IngredientDefinition('Sugar', '1/2 tsp superfine '),
          IngredientDefinition('Orange', '1 '),
          IngredientDefinition('Maraschino cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/dms3io1504366318.jpg',
      ),
      Cocktail(
        id: '11149',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.whiskeySourGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a sour glass.
                    ''',
        isFavourite: true,
        name: 'Boxcar',
        ingredients: [
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Triple sec', '1 oz '),
          IngredientDefinition('Lemon juice', '1 tsp '),
          IngredientDefinition('Grenadine', '1/2 tsp '),
          IngredientDefinition('Egg white', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/pwgtpa1504366376.jpg',
      ),
      Cocktail(
        id: '17120',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.punchBowl,
        instruction: '''
                      Mix all ingredients together. Slowly and gently. Works best if ice is added to punch bowl and soda\'s are very cold.
                    ''',
        isFavourite: true,
        name: 'Brain Fart',
        ingredients: [
          IngredientDefinition('Everclear', '1 fifth '),
          IngredientDefinition('Vodka', '1 fifth Smirnoff red label '),
          IngredientDefinition('Mountain Dew', '2 L '),
          IngredientDefinition('Surge', '2 L '),
          IngredientDefinition('Lemon juice', '1 small bottle '),
          IngredientDefinition('Rum', '1 pint '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rz5aun1504389701.jpg',
      ),
      Cocktail(
        id: '13405',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      layered erin first, then sambuca and then avocart(should sit in middle of other two. To drink: use a straw to suck up avocart then shot the rest and then suck fumes up through straw.
                    ''',
        isFavourite: true,
        name: 'Brainteaser',
        ingredients: [
          IngredientDefinition('Sambuca', '30 ml white '),
          IngredientDefinition('Erin Cream', '30 ml '),
          IngredientDefinition('Advocaat', '5 ml '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ruywtq1461866066.jpg',
      ),
      Cocktail(
        id: '17210',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Fill glass with crushed ice. Build gin, lemon juice and simple syrup over. Stir, and then pour blackberry liqueur over in a circular fashion to create marbling effect. Garnish with two blackberries and lemon slice.
                    ''',
        isFavourite: true,
        name: 'Bramble',
        ingredients: [
          IngredientDefinition('Gin', '4 cl'),
          IngredientDefinition('lemon juice', '1.5 cl'),
          IngredientDefinition('Sugar syrup', '1 cl'),
          IngredientDefinition('Creme de Mure', '1.5 cl'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/lvzl3r1504372526.jpg',
      ),
      Cocktail(
        id: '16447',
        category: CocktailCategory.softDrinkSoda,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.beerMug,
        instruction: '''
                      Scoop two large scoops of vanilla ice-cream into frosted beer mug. Next, add 2 ounces Maker\'s Mark. Then, pour in coke. Gently stir and enjoy.
                    ''',
        isFavourite: true,
        name: 'Brandon and Will\'s Coke Float',
        ingredients: [
          IngredientDefinition('Vanilla ice-cream', '2 scoops '),
          IngredientDefinition('Coca-Cola', '1 can '),
          IngredientDefinition('Bourbon', '2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xspxyr1472719185.jpg',
      ),
      Cocktail(
        id: '11016',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients (except nutmeg) with ice and strain contents into a cocktail glass. Sprinkle nutmeg on top and serve.
                    ''',
        isFavourite: true,
        name: 'Brandy Alexander',
        ingredients: [
          IngredientDefinition('Brandy', '1 oz '),
          IngredientDefinition('Creme de Cacao', '1 oz white '),
          IngredientDefinition('Light cream', '1 oz '),
          IngredientDefinition('Nutmeg', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tvqxvr1483387746.jpg',
      ),
      Cocktail(
        id: '11157',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      In an old-fashioned glass, dissolve the sugar in the club soda. Add crushed ice until the glass is almost full. Add the brandy. Stir well. Garnish with the cherry and the orange and lemon slices.
                    ''',
        isFavourite: true,
        name: 'Brandy Cobbler',
        ingredients: [
          IngredientDefinition('Sugar', '1 tsp superfine '),
          IngredientDefinition('Club soda', '3 oz '),
          IngredientDefinition('Lemon', '1 '),
          IngredientDefinition('Brandy', '2 oz '),
          IngredientDefinition('Maraschino cherry', '1 '),
          IngredientDefinition('Orange', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/5xgu591582580586.jpg',
      ),
      Cocktail(
        id: '11164',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.whiskeySourGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine the brandy, egg, sugar, and cream. Shake well. Strain into a sour glass and garnish with the nutmeg.
                    ''',
        isFavourite: true,
        name: 'Brandy Flip',
        ingredients: [
          IngredientDefinition('Brandy', '2 oz '),
          IngredientDefinition('Egg', '1 whole '),
          IngredientDefinition('Sugar', '1 tsp superfine '),
          IngredientDefinition('Light cream', '1/2 oz '),
          IngredientDefinition('Nutmeg', '1/8 tsp grated '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/6ty09d1504366461.jpg',
      ),
      Cocktail(
        id: '11170',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.whiskeySourGlass,
        instruction: '''
                      Shake brandy, juice of lemon, and powdered sugar with ice and strain into a whiskey sour glass. Decorate with the lemon slice, top with the cherry, and serve.
                    ''',
        isFavourite: true,
        name: 'Brandy Sour',
        ingredients: [
          IngredientDefinition('Brandy', '2 oz '),
          IngredientDefinition('Lemon', '1/2 slice '),
          IngredientDefinition('Powdered sugar', '1/2 tsp '),
          IngredientDefinition('Cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/b1bxgq1582484872.jpg',
      ),
      Cocktail(
        id: '13068',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Pour Tabasco into bottom of shot glass and fill with tequila.
                    ''',
        isFavourite: true,
        name: 'Brave Bull Shooter',
        ingredients: [
          IngredientDefinition('Tequila', '1/2 oz '),
          IngredientDefinition('Tabasco sauce', '1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yrtypx1473344625.jpg',
      ),
      Cocktail(
        id: '17825',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.coupeGlass,
        instruction: '''
                      Mix ingredients in a warmed mug and stir.
                    ''',
        isFavourite: true,
        name: 'Brigadier',
        ingredients: [
          IngredientDefinition('Hot Chocolate', '4 oz'),
          IngredientDefinition('Green Chartreuse', '1 oz'),
          IngredientDefinition('Cherry Heering', '1 oz'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/nl89tf1518947401.jpg',
      ),
      Cocktail(
        id: '178311',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Half fill the glass with ice cubes. Crush the wormwood and add to ice. Pour rum, scotch and butters, then serve!
                    ''',
        isFavourite: true,
        name: 'Broadside',
        ingredients: [
          IngredientDefinition('151 proof rum', '1 shot'),
          IngredientDefinition('Scotch', '1/2 shot'),
          IngredientDefinition('Bitters', '3 drops'),
          IngredientDefinition('Wormwood', '1 Fresh'),
          IngredientDefinition('Ice', 'cubes'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/l2o6xu1582476870.jpg',
      ),
      Cocktail(
        id: '178310',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Combine ingredients with ice and stir until well-chilled. Strain into a chilled cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Brooklyn',
        ingredients: [
          IngredientDefinition('Rye Whiskey', '2 oz'),
          IngredientDefinition('Dry Vermouth', '1 oz'),
          IngredientDefinition('Maraschino Liqueur', '1/4 oz'),
          IngredientDefinition('Angostura Bitters', '3 dashes'),
          IngredientDefinition('Maraschino Cherry', '1'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ojsezf1582477277.jpg',
      ),
      Cocktail(
        id: '13066',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      In a regular-sized shot glass, layer, with a spoon or cherry, the grenadine , the Kahlua , then the Bailey\'s Irish cream in equal portions. It goes down really smooth ,and you don\'t even need a chaser. It tastes just like chocolate milk.(Really!)
                    ''',
        isFavourite: true,
        name: 'Bruce\'s Puce',
        ingredients: [
          IngredientDefinition('Grenadine', 'null'),
          IngredientDefinition('Kahlua', 'null'),
          IngredientDefinition('Baileys irish cream', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/svsvqv1473344558.jpg',
      ),
      Cocktail(
        id: '16998',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Pour all ingredients in a mixing tin over ice, stir, and strain into shot glass
                    ''',
        isFavourite: true,
        name: 'Bruised Heart',
        ingredients: [
          IngredientDefinition('Vodka', '1/2 oz '),
          IngredientDefinition('Chambord raspberry liqueur', '1/2 oz '),
          IngredientDefinition('Peachtree schnapps', '1/2 oz '),
          IngredientDefinition('Cranberry juice', '1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/7if5kq1503564209.jpg',
      ),
      Cocktail(
        id: '14730',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Layer in order into a shot glass.
                    ''',
        isFavourite: true,
        name: 'Bubble Gum',
        ingredients: [
          IngredientDefinition('Vodka', '1/4 '),
          IngredientDefinition('Banana liqueur', '1/4 '),
          IngredientDefinition('Orange juice', '1/4 '),
          IngredientDefinition('Peach schnapps', '1/4 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/spuurv1468878783.jpg',
      ),
      Cocktail(
        id: '17035',
        category: CocktailCategory.beer,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.beerPilsner,
        instruction: '''
                      Pour the corona into an 18oz beer glass pour the bacardi limon into the beer stir very gently
                    ''',
        isFavourite: true,
        name: 'Buccaneer',
        ingredients: [
          IngredientDefinition('Corona', '1 '),
          IngredientDefinition('Bacardi Limon', '1 shot '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/upvtyt1441249023.jpg',
      ),
      Cocktail(
        id: '14538',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      This is a layered shot. First pour the Bailey\'s into the shot glass. Then take an upside down spoon and touch it to the inside wall of the glass. Carefully add the Kahlua. Repeat this process for the Sambuca. If done properly, the alcohol will stay separated and resemble a bumble bee. Enjoy!!!
                    ''',
        isFavourite: true,
        name: 'Bumble Bee #1',
        ingredients: [
          IngredientDefinition('Baileys irish cream', '1/3 oz '),
          IngredientDefinition('Kahlua', '1/3 oz '),
          IngredientDefinition('Sambuca', '1/3 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uwqpvv1461866378.jpg',
      ),
      Cocktail(
        id: '17220',
        category: CocktailCategory.milkFloatShake,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.beerMug,
        instruction: '''
                      Blend together in a blender. Serve in a chilled Beer mug with Fresh Blueberries and caramel for topping.
                    ''',
        isFavourite: true,
        name: 'Butter Baby',
        ingredients: [
          IngredientDefinition('Vanilla Ice-Cream', '2 scoops '),
          IngredientDefinition('Butterscotch schnapps', '1 part '),
          IngredientDefinition('Milk', 'full glass '),
          IngredientDefinition('Vodka', '2 parts '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/1xhjk91504783763.jpg',
      ),
      Cocktail(
        id: '14181',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      Fill mug almost to top with coffee.Add milk, triple sec and brandy. Stir.
                    ''',
        isFavourite: true,
        name: 'Cafe Savoy',
        ingredients: [
          IngredientDefinition('Coffee', 'null'),
          IngredientDefinition('Milk', '1/2 oz '),
          IngredientDefinition('Triple sec', '1/2 oz '),
          IngredientDefinition('Brandy', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vqwptt1441247711.jpg',
      ),
      Cocktail(
        id: '11202',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Place lime and sugar into old fashioned glass and muddle (mash the two ingredients together using a muddler or a wooden spoon). Fill the glass with ice and add the Cachaça.
                    ''',
        isFavourite: true,
        name: 'Caipirinha',
        ingredients: [
          IngredientDefinition('Sugar', '2 tsp'),
          IngredientDefinition('Lime', '1 '),
          IngredientDefinition('Cachaca', '2 1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/jgvn7p1582484435.jpg',
      ),
      Cocktail(
        id: '13206',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Same as Caipirinha but instead of cachaca you add WHITE RUM. It\'s great!!!!!!!!
                    ''',
        isFavourite: true,
        name: 'Caipirissima',
        ingredients: [
          IngredientDefinition('Lime', '2 '),
          IngredientDefinition('Sugar', '2 tblsp '),
          IngredientDefinition('White rum', '2-3 oz '),
          IngredientDefinition('Ice', 'crushed '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yd47111503565515.jpg',
      ),
      Cocktail(
        id: '11205',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Shake all ingredients (except carbonated water) with ice and strain into a collins glass over shaved ice. Fill with carbonated water and stir. Decorate with slices of orange and lemon. Add the cherry and serve with a straw.
                    ''',
        isFavourite: true,
        name: 'California Lemonade',
        ingredients: [
          IngredientDefinition('Blended whiskey', '2 oz '),
          IngredientDefinition('Lemon', 'Juice of 1 '),
          IngredientDefinition('Lime', 'Juice of 1 '),
          IngredientDefinition('Powdered sugar', '1 tblsp'),
          IngredientDefinition('Grenadine', '1/4 tsp'),
          IngredientDefinition('Carbonated water', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/q5z4841582484168.jpg',
      ),
      Cocktail(
        id: '14282',
        category: CocktailCategory.softDrinkSoda,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Put Kahlua and Galliano in highball glass fill with soda
                    ''',
        isFavourite: true,
        name: 'California Root Beer',
        ingredients: [
          IngredientDefinition('Kahlua', '3/4 oz '),
          IngredientDefinition('Galliano', '3/4 oz '),
          IngredientDefinition('Soda water', 'Fill with '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rsxuyr1472719526.jpg',
      ),
      Cocktail(
        id: '16047',
        category: CocktailCategory.beer,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.beerMug,
        instruction: '''
                      Use a 15 oz glass. Add Campari first. Fill with beer.
                    ''',
        isFavourite: true,
        name: 'Campari Beer',
        ingredients: [
          IngredientDefinition('Lager', '1 bottle '),
          IngredientDefinition('Campari', '1 1/2 cl '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xsqrup1441249130.jpg',
      ),
      Cocktail(
        id: '178329',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Mix all ingredients together in a shaker and strain into a collins glass. Use Caribbean dark Rum for a sweeter taste.
                    ''',
        isFavourite: true,
        name: 'Captain Kidd\'s Punch',
        ingredients: [
          IngredientDefinition('Rum', '2 shots'),
          IngredientDefinition('Lime Juice', '1 shot'),
          IngredientDefinition('Egg White', '1 shot'),
          IngredientDefinition('Bitters', '1 dash'),
          IngredientDefinition('Sugar', 'Ground'),
          IngredientDefinition('Nutmeg', 'Top'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/d83spj1596017390.jpg',
      ),
      Cocktail(
        id: '17065',
        category: CocktailCategory.beer,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.beerPilsner,
        instruction: '''
                      Pour the Corona into an 18oz beer glass pour the rum into the beer.
                    ''',
        isFavourite: true,
        name: 'Caribbean Boilermaker',
        ingredients: [
          IngredientDefinition('Corona', '1 bottle '),
          IngredientDefinition('Light rum', '1 shot '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/svsxsv1454511666.jpg',
      ),
      Cocktail(
        id: '12796',
        category: CocktailCategory.homemadeLiqueur,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Pare very thinly the bright-colored rind from the oranges (no white). Blot the peel on paper towels to remove any excess oil. Put peel in a 4 cup screw-top jar. Add 2 cups vodka. Close jar. Store in a cool, dark place for 2 days or until the vodka has absorbed the flavor. Remove peel and add remaining vodka. Close jar and add remaining cup of vodka. Close the jar and store in a cool dark place at least 1 month to age.
                    ''',
        isFavourite: true,
        name: 'Caribbean Orange Liqueur',
        ingredients: [
          IngredientDefinition('Orange', '3 large '),
          IngredientDefinition('Vodka', '3 cups '),
          IngredientDefinition('Sugar', '1 1/3 cup superfine '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qwxuwy1472667570.jpg',
      ),
      Cocktail(
        id: '11222',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Casa Blanca',
        ingredients: [
          IngredientDefinition('Light rum', '2 oz '),
          IngredientDefinition('Triple sec', '1 1/2 tsp '),
          IngredientDefinition('Lime juice', '1 1/2 tsp '),
          IngredientDefinition('Maraschino liqueur', '1 1/2 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/usspxq1441553762.jpg',
      ),
      Cocktail(
        id: '17185',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Pour all ingredients into shaker with ice cubes. Shake well. Strain into chilled cocktail glass. Garnish with a lemon twist and a maraschino cherry. Serve without a straw.
                    ''',
        isFavourite: true,
        name: 'Casino',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Maraschino liqueur', '1/4 tsp '),
          IngredientDefinition('Lemon juice', '1/4 tsp '),
          IngredientDefinition('Orange bitters', '2 dashes '),
          IngredientDefinition('Cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/1mvjxg1504348579.jpg',
      ),
      Cocktail(
        id: '11224',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.whiskeySourGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a sour glass.
                    ''',
        isFavourite: true,
        name: 'Casino Royale',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Lemon juice', '1/2 oz '),
          IngredientDefinition('Maraschino liqueur', '1 tsp '),
          IngredientDefinition('Orange bitters', '1 dash '),
          IngredientDefinition('Egg yolk', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/3qpv121504366699.jpg',
      ),
      Cocktail(
        id: '11227',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.champagneFlute,
        instruction: '''
                      Add dash of Angostura bitter onto sugar cube and drop it into champagne flute. Add cognac followed by gently pouring chilled champagne. Garnish with orange slice and maraschino cherry.
                    ''',
        isFavourite: true,
        name: 'Champagne Cocktail',
        ingredients: [
          IngredientDefinition('Champagne', 'Chilled '),
          IngredientDefinition('Sugar', '1 piece '),
          IngredientDefinition('Bitters', '2 dashes '),
          IngredientDefinition('Lemon peel', '1 twist of '),
          IngredientDefinition('Cognac', '1 dash'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ehh5df1504366811.jpg',
      ),
      Cocktail(
        id: '17174',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.pintGlass,
        instruction: '''
                      Now stir vigorously and then pour over a large cup of ice. Now drink it with a straw and stir occasionally.
                    ''',
        isFavourite: true,
        name: 'Cherry Electric Lemonade',
        ingredients: [
          IngredientDefinition('Gin', '1 oz'),
          IngredientDefinition('Tequila', '1 oz'),
          IngredientDefinition('Vodka', '1 oz'),
          IngredientDefinition('White rum', '1 oz'),
          IngredientDefinition('Triple Sec', '1 oz'),
          IngredientDefinition('Cherry Grenadine', '1 oz'),
          IngredientDefinition('Sweet and sour', '1 oz'),
          IngredientDefinition('Club soda', '3 oz'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tquyyt1451299548.jpg',
      ),
      Cocktail(
        id: '11239',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Cherry Rum',
        ingredients: [
          IngredientDefinition('Light rum', '1 1/4 oz '),
          IngredientDefinition('Cherry brandy', '1 1/2 tsp '),
          IngredientDefinition('Light cream', '1 tblsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/twsuvr1441554424.jpg',
      ),
      Cocktail(
        id: '11242',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Shake all ingredients (except carbonated water) with ice and strain into a highball glass over two ice cubes. Fill with carbonated water, stir, and serve.
                    ''',
        isFavourite: true,
        name: 'Chicago Fizz',
        ingredients: [
          IngredientDefinition('Light rum', '1 oz '),
          IngredientDefinition('Port', '1 oz '),
          IngredientDefinition('Lemon', 'Juice of 1/2 '),
          IngredientDefinition('Powdered sugar', '1 tsp '),
          IngredientDefinition('Egg white', '1 '),
          IngredientDefinition('Carbonated water', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qwvwqr1441207763.jpg',
      ),
      Cocktail(
        id: '11243',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.champagneFlute,
        instruction: '''
                      Combine all ingredients in an electric blender and blend at a low speed for a short length of time. Pour into a chilled champagne flute and serve.
                    ''',
        isFavourite: true,
        name: 'Chocolate Black Russian',
        ingredients: [
          IngredientDefinition('Kahlua', '1 oz '),
          IngredientDefinition('Vodka', '1/2 oz '),
          IngredientDefinition('Chocolate ice-cream', '5 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yyvywx1472720879.jpg',
      ),
      Cocktail(
        id: '13328',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Put the milk in the bottom, pour the Liquer on top and add the dash of amaretto. Do not mix. SLAM IT!
                    ''',
        isFavourite: true,
        name: 'Chocolate Milk',
        ingredients: [
          IngredientDefinition('Chocolate liqueur', '1/2 shot '),
          IngredientDefinition('Milk', '1/2 shot '),
          IngredientDefinition('Amaretto', '1 dash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/j6q35t1504889399.jpg',
      ),
      Cocktail(
        id: '17135',
        category: CocktailCategory.softDrinkSoda,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour half of coke in a glass. Then add Bacardi and top it off with the remaining coke. Stir and drink up!
                    ''',
        isFavourite: true,
        name: 'Citrus Coke',
        ingredients: [
          IngredientDefinition('Bacardi Limon', '1 part '),
          IngredientDefinition('Coca-Cola', '2 parts '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uyrvut1479473214.jpg',
      ),
      Cocktail(
        id: '11251',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.
                    ''',
        isFavourite: true,
        name: 'City Slicker',
        ingredients: [
          IngredientDefinition('Brandy', '2 oz '),
          IngredientDefinition('Triple sec', '1/2 oz '),
          IngredientDefinition('Lemon juice', '1 tblsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/dazdlg1504366949.jpg',
      ),
      Cocktail(
        id: '11145',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      In an old-fashioned glass, muddle the bitters and water into the sugar cube, using the back of a teaspoon. Almost fill the glass with ice cubes and add the bourbon. Garnish with the orange slice and the cherry. Serve with a swizzle stick.
                    ''',
        isFavourite: true,
        name: 'Classic Old-Fashioned',
        ingredients: [
          IngredientDefinition('Bitters', '3 dashes '),
          IngredientDefinition('Water', '1 tsp '),
          IngredientDefinition('Sugar', '1 '),
          IngredientDefinition('Bourbon', '3 oz '),
          IngredientDefinition('Orange', '1 '),
          IngredientDefinition('Maraschino cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/w8cxqv1582485254.jpg',
      ),
      Cocktail(
        id: '11255',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Clove Cocktail',
        ingredients: [
          IngredientDefinition('Sweet Vermouth', '1 oz '),
          IngredientDefinition('Sloe gin', '1/2 oz '),
          IngredientDefinition('Wine', '1/2 oz Muscatel '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qxvtst1461867579.jpg',
      ),
      Cocktail(
        id: '17186',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Dry shake ingredients to emulsify, add ice, shake and served straight up.
                    ''',
        isFavourite: true,
        name: 'Clover Club',
        ingredients: [
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Grenadine', '2 tsp '),
          IngredientDefinition('Lemon', 'Juice of 1/2 '),
          IngredientDefinition('Egg white', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/t0aja61504348715.jpg',
      ),
      Cocktail(
        id: '12798',
        category: CocktailCategory.homemadeLiqueur,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Combine coffee, sugar and water. Simmer 1 hour and let cool. Add vanilla and vodka. Age in sealed jar 2 to 3 weeks.
                    ''',
        isFavourite: true,
        name: 'Coffee Liqueur',
        ingredients: [
          IngredientDefinition('Coffee', '10 tblsp instant '),
          IngredientDefinition('Vanilla extract', '4 tblsp '),
          IngredientDefinition('Sugar', '2 1/2 cups '),
          IngredientDefinition('Vodka', '1 qt '),
          IngredientDefinition('Water', '2 1/2 cups '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ryvtsu1441253851.jpg',
      ),
      Cocktail(
        id: '12800',
        category: CocktailCategory.homemadeLiqueur,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Boil water and sugar until dissolved. Turn off heat. Slowly add dry instant coffee and continue stirring. Add a chopped vanilla bean to the vodka, then combine the cooled sugar syrup and coffee solution with the vodka. Cover tightly and shake vigorously each day for 3 weeks. Strain and filter. Its also best to let the sugar mixture cool completely so the vodka won't evaporate when its added. If you like a smoother feel to the liqueur you can add about 1 teaspoon of glycerine to the finished product.
                    ''',
        isFavourite: true,
        name: 'Coffee-Vodka',
        ingredients: [
          IngredientDefinition('Water', '2 cups '),
          IngredientDefinition('Sugar', '2 cups white '),
          IngredientDefinition('Coffee', '1/2 cup instant '),
          IngredientDefinition('Vanilla', '1/2'),
          IngredientDefinition('Vodka', '1 1/2 cup'),
          IngredientDefinition('Caramel coloring', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qvrrvu1472667494.jpg',
      ),
      Cocktail(
        id: '17830',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Cut the half lime in half again. Add the lime, falernum, and bitters to a rocks glass. Muddle. Add the rum. (Aged Barbados rum such as Plantation 5 Year is recommended). Add ice and stir. Float the blackstrap rum on top. Serve with a straw.
                    ''',
        isFavourite: true,
        name: 'Corn n Oil',
        ingredients: [
          IngredientDefinition('Lime', '1/2'),
          IngredientDefinition('Falernum', '1/3 oz'),
          IngredientDefinition('Angostura Bitters', '2 dashes'),
          IngredientDefinition('Añejo rum', '1 oz'),
          IngredientDefinition('blackstrap rum', '1 oz'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/pk6dwi1592767243.jpg',
      ),
      Cocktail(
        id: '17250',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake, strain, straight up, cocktail glass rinsed with absinthe

                    ''',
        isFavourite: true,
        name: 'Corpse Reviver #2',
        ingredients: [
          IngredientDefinition('Gin', '3/4 oz'),
          IngredientDefinition('Triple Sec', '3/4 oz'),
          IngredientDefinition('Lillet Blanc', '3/4 oz'),
          IngredientDefinition('Lemon Juice', '3/4 oz'),
          IngredientDefinition('Absinthe', '1 dash'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/gifgao1513704334.jpg',
      ),
      Cocktail(
        id: '17196',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Add all ingredients into cocktail shaker filled with ice. Shake well and double strain into large cocktail glass. Garnish with lime wheel.
                    ''',
        isFavourite: true,
        name: 'Cosmopolitan',
        ingredients: [
          IngredientDefinition('Absolut Citron', '1 1/4 oz '),
          IngredientDefinition('Lime juice', '1/4 oz '),
          IngredientDefinition('Cointreau', '1/4 oz '),
          IngredientDefinition('Cranberry juice', '1/4 cup '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/kpsajh1504368362.jpg',
      ),
      Cocktail(
        id: '14133',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Pour all ingredients in mixing glass half filled with ice, shake and strain into chilled Martini glass.
                    ''',
        isFavourite: true,
        name: 'Cosmopolitan Martini',
        ingredients: [
          IngredientDefinition('Cointreau', '1/2 oz '),
          IngredientDefinition('Vodka', '1 oz '),
          IngredientDefinition('Lime', 'Juice of 1/2 '),
          IngredientDefinition('Cranberry juice', '1 splash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/upxxpq1439907580.jpg',
      ),
      Cocktail(
        id: '12802',
        category: CocktailCategory.homemadeLiqueur,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Place the chopped cranberries in a 2 liter jar that has a tight-fitting lid. Add the sugar and rum. Adjust the lid securely and place the jar in a cool, dark place. Invert the jar and shake it every day for six weeks. Strain the cordial into bottles and seal with corks.
                    ''',
        isFavourite: true,
        name: 'Cranberry Cordial',
        ingredients: [
          IngredientDefinition('Cranberries', '1/2 kg chopped '),
          IngredientDefinition('Sugar', '3/4 L '),
          IngredientDefinition('Light rum', '1/2 L '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qtspsx1472667392.jpg',
      ),
      Cocktail(
        id: '14608',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour 1oz of Spiced Rum into a highball glass with ice. Fill with Ginger Ale.
                    ''',
        isFavourite: true,
        name: 'Cream Soda',
        ingredients: [
          IngredientDefinition('Spiced rum', '1 oz '),
          IngredientDefinition('Ginger ale', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yqstxr1479209367.jpg',
      ),
      Cocktail(
        id: '12808',
        category: CocktailCategory.homemadeLiqueur,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Bring sugar and water to a boil and simmer for 10 minutes. Cool. Add the remaining ingredients and stir. Cover and let ripen for 1 month.
                    ''',
        isFavourite: true,
        name: 'Creme de Menthe',
        ingredients: [
          IngredientDefinition('Sugar', '8 cups '),
          IngredientDefinition('Water', '6 cups '),
          IngredientDefinition('Grain alcohol', '1 pint '),
          IngredientDefinition('Peppermint extract', '1 oz pure '),
          IngredientDefinition('Food coloring', '1 tblsp green '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yxswtp1441253918.jpg',
      ),
      Cocktail(
        id: '13751',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Fill tall glass with ice cubes. Add rum. Rub cut edge of lime on rim of glass then squeeze juice into glass. Fill with Coca-Cola. Garnish with lime slice. Enjoy!
                    ''',
        isFavourite: true,
        name: 'Cuba Libra',
        ingredients: [
          IngredientDefinition('Dark rum', '1-2 shot '),
          IngredientDefinition('Lime', 'Squeeze '),
          IngredientDefinition('Coca-Cola', 'Fill with '),
          IngredientDefinition('Ice', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ck6d0p1504388696.jpg',
      ),
      Cocktail(
        id: '11288',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Build all ingredients in a Collins glass filled with ice. Garnish with lime wedge.
                    ''',
        isFavourite: true,
        name: 'Cuba Libre',
        ingredients: [
          IngredientDefinition('Light rum', '2 oz '),
          IngredientDefinition('Lime', 'Juice of 1/2 '),
          IngredientDefinition('Coca-Cola', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uuxsrr1473201663.jpg',
      ),
      Cocktail(
        id: '11006',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Pour all ingredients into shaker with ice cubes. Shake well. Strain in chilled cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Daiquiri',
        ingredients: [
          IngredientDefinition('Light rum', '1 1/2 oz '),
          IngredientDefinition('Lime', 'Juice of 1/2 '),
          IngredientDefinition('Powdered sugar', '1 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/mrz9091589574515.jpg',
      ),
      Cocktail(
        id: '13194',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Pour into shot glass. Put in mouth. Repeat as deemed necessary.
                    ''',
        isFavourite: true,
        name: 'Damned if you do',
        ingredients: [
          IngredientDefinition('Whiskey', '0.75 oz '),
          IngredientDefinition('Hot Damn', '0.25 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ql7bmx1503565106.jpg',
      ),
      Cocktail(
        id: '15409',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      pour it in and mix it.
                    ''',
        isFavourite: true,
        name: 'Danbooka',
        ingredients: [
          IngredientDefinition('Coffee', '3 parts '),
          IngredientDefinition('Everclear', '1 part '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vurrxr1441246074.jpg',
      ),
      Cocktail(
        id: '17211',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      In a highball glass filled with ice add 6cl dark rum and top with ginger beer. Garnish with lime wedge.
                    ''',
        isFavourite: true,
        name: 'Dark and Stormy',
        ingredients: [
          IngredientDefinition('Dark Rum', '5 cl'),
          IngredientDefinition('Ginger Beer', '10 cl'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/t1tn0s1504374905.jpg',
      ),
      Cocktail(
        id: '17177',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Muddle the sugar into the lime wedges in an old-fashioned glass.
Fill the glass with ice cubes.
Pour the cachaca into the glass.
Stir well.
                    ''',
        isFavourite: true,
        name: 'Dark Caipirinha',
        ingredients: [
          IngredientDefinition('demerara Sugar', '2 tsp '),
          IngredientDefinition('Lime', '1'),
          IngredientDefinition('Cachaca', '2 1/2 oz'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uwstrx1472406058.jpg',
      ),
      Cocktail(
        id: '14482',
        category: CocktailCategory.softDrinkSoda,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      There are many good cherry liqueurs you can use, but I prefere Heering. Add one share of the liqueur. Then you add one share of Soda. For a sour sling use Tonic (most people prefer the drink without Tonic). Afterwards you fill the glass with Orange Juice and ice cubes.
                    ''',
        isFavourite: true,
        name: 'Darkwood Sling',
        ingredients: [
          IngredientDefinition('Cherry Heering', '1 part '),
          IngredientDefinition('Soda water', '1 part '),
          IngredientDefinition('Orange juice', '1 part '),
          IngredientDefinition('Ice', 'cubes'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/sxxsyq1472719303.jpg',
      ),
      Cocktail(
        id: '178334',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.margaritaGlass,
        instruction: '''
                      Easy as you like, pour the absinthe into a chilled glass, top with champagne. Must be drunk mid afternoon for the optimum effect.
                    ''',
        isFavourite: true,
        name: 'Death in the Afternoon',
        ingredients: [
          IngredientDefinition('Absinthe', '2 shots'),
          IngredientDefinition('Champagne', 'Top'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/y7s3rh1598719574.jpg',
      ),
      Cocktail(
        id: '17187',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Pour all ingredients into a mixing glass with ice. Stir. Strain into a cocktail glass. Garnish with a sprig of fresh mint in the drink.
                    ''',
        isFavourite: true,
        name: 'Derby',
        ingredients: [
          IngredientDefinition('gin', '6 cl'),
          IngredientDefinition('Peach Bitters', '2 dashes'),
          IngredientDefinition('Mint', '2 Fresh leaves'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/i502ra1504349156.jpg',
      ),
      Cocktail(
        id: '13128',
        category: CocktailCategory.beer,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.pintGlass,
        instruction: '''
                      Pour the lager first then add the blackcurrant cordial. Top up with the cider. The colour sholud be very dark approaching the colour of Guiness.
                    ''',
        isFavourite: true,
        name: 'Diesel',
        ingredients: [
          IngredientDefinition('Lager', '1/2 pint '),
          IngredientDefinition('Cider', '1/2 pint '),
          IngredientDefinition('Blackcurrant cordial', '1 dash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/sxrrqq1454512852.jpg',
      ),
      Cocktail(
        id: '17181',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Pour the vodka, dry vermouth and olive brine into a cocktail shaker with a handful of ice and shake well.
Rub the rim of a martini glass with the wedge of lemon.
Strain the contents of the cocktail shaker into the glass and add the olive.
A dirty Martini contains a splash of olive brine or olive juice and is typically garnished with an olive.
                    ''',
        isFavourite: true,
        name: 'Dirty Martini',
        ingredients: [
          IngredientDefinition('Vodka', '70ml/2fl oz'),
          IngredientDefinition('Dry Vermouth', '1 tbsp'),
          IngredientDefinition('Olive Brine', '2 tbsp'),
          IngredientDefinition('Lemon', '1 wedge'),
          IngredientDefinition('Olive', '1'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vcyvpq1485083300.jpg',
      ),
      Cocktail(
        id: '14466',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      This is a layered shot - the Bailey\'s must be on top
                    ''',
        isFavourite: true,
        name: 'Dirty Nipple',
        ingredients: [
          IngredientDefinition('Kahlua', 'null'),
          IngredientDefinition('Sambuca', 'null'),
          IngredientDefinition('Baileys irish cream', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vtyqrt1461866508.jpg',
      ),
      Cocktail(
        id: '16991',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.hurricaneGlass,
        instruction: '''
                      Start with the Sprite. Next comes the tequila. After that, add the Minute Maid Fruit Punch, then float the 151. Rocks optional.
                    ''',
        isFavourite: true,
        name: 'Downshift',
        ingredients: [
          IngredientDefinition('Fruit punch', '2 part '),
          IngredientDefinition('Sprite', '1 part '),
          IngredientDefinition('Tequila', '2 shots '),
          IngredientDefinition('151 proof rum', 'Float Bacardi '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/y36z8c1503563911.jpg',
      ),
      Cocktail(
        id: '11320',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      In a highball glass almost filled with ice cubes, combine the gin and ginger ale. Stir well. Garnish with the lime wedge.
                    ''',
        isFavourite: true,
        name: 'Dragonfly',
        ingredients: [
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Ginger ale', '4 oz '),
          IngredientDefinition('Lime', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uc63bh1582483589.jpg',
      ),
      Cocktail(
        id: '11005',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Straight: Pour all ingredients into mixing glass with ice cubes. Stir well. Strain in chilled martini cocktail glass. Squeeze oil from lemon peel onto the drink, or garnish with olive.
                    ''',
        isFavourite: true,
        name: 'Dry Martini',
        ingredients: [
          IngredientDefinition('Gin', '1 2/3 oz '),
          IngredientDefinition('Dry Vermouth', '1/3 oz '),
          IngredientDefinition('Olive', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/6ck9yi1589574317.jpg',
      ),
      Cocktail(
        id: '11324',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      In a mixing glass half-filled with ice cubes, combine the Scotch and vermouth. Stir well. Strain into a cocktail glass. Garnish with the lemon twist.
                    ''',
        isFavourite: true,
        name: 'Dry Rob Roy',
        ingredients: [
          IngredientDefinition('Scotch', '2 1/2 oz '),
          IngredientDefinition('Dry Vermouth', '1 1/2 tsp '),
          IngredientDefinition('Lemon peel', '1 twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/typuyq1439456976.jpg',
      ),
      Cocktail(
        id: '11326',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir all ingredients (except lemon peel) with ice and strain into a cocktail glass. Add the twist of lemon peel and serve.
                    ''',
        isFavourite: true,
        name: 'Dubonnet Cocktail',
        ingredients: [
          IngredientDefinition('Dubonnet Rouge', '1 1/2 oz '),
          IngredientDefinition('Gin', '3/4 oz '),
          IngredientDefinition('Bitters', '1 dash '),
          IngredientDefinition('Lemon peel', '1 twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/pfz3hz1582483111.jpg',
      ),
      Cocktail(
        id: '17182',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Shake all ingredients.
Double strain in a chilled double old fashioned glass with abig ice cube.
Garnish with a couple of lavender sprigs
                    ''',
        isFavourite: true,
        name: 'Duchamp\'s Punch',
        ingredients: [
          IngredientDefinition('Pisco', '5 cl'),
          IngredientDefinition('Lime Juice', '2.5 cl'),
          IngredientDefinition('Pineapple Syrup', '2.5 cl'),
          IngredientDefinition('St. Germain', '1.5 cl'),
          IngredientDefinition('Angostura Bitters', '2 Dashes'),
          IngredientDefinition('Pepper', 'Pinch'),
          IngredientDefinition('Lavender', '2 sprigs'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/g51naw1485084685.jpg',
      ),
      Cocktail(
        id: '17246',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.beerGlass,
        instruction: '''
                      To ensure that your pork fat is just as delicious as theirs, here’s their adobo marinade and what to do with it (you’ll also need a rack of ribs):

4 ancho chiles, 8 guajillo chiles and 4 chipotle chiles, plus 4 cloves roasted garlic, half a cup of cider vinegar, a quarter teaspoon of Mexican oregano, 1 teaspoon of ground black pepper, a whole clove, a quarter teaspoon of ground cinnamon and a half teaspoon of ground cumin.

Toast the dried chiles and soak in water for at least an hour until they are rehydrated. Drain and discard the soaking liquid. Combine the soaked chiles with the remaining ingredients and purée until smooth.

Cold smoke a rack of baby back pork ribs by taking a large hotel pan with woodchips on one side and charcoal on the other. Place another, smaller, pan with pork ribs, above the charcoal/woodchip pan. Ignite the charcoal, being careful to not ignite the woodchips. Cover both pans with foil and allow to smoke for 10-15 minutes, until desired level of smoke is achieved, then coat with adobo marinade and wrap in tin foil prior to placing ribs in a 300 degree oven for 7 hours. When the ribs have cooled, strain off the fat and use for the infusion.

If you’re having a hard time coming up to the same kind of volume of fat, make up the balance with pork lard from a butcher. To get the same depth of flavor without the ribs, heat up the fat in a pot with a few spoons of the marinade.

Once you’ve got your tub of seasoned pork fat in cooled liquid form, pour equal amounts of Ilegal Joven mezcal and fat into a sealable container. Seal the container and give it a really good shake, then put it in the freezer overnight. When the whole thing is separated and congealed, pour it through a fine mesh chinoise. If you don’t have a chinoise, try a fine mesh strainer, or if you don’t have one of those, try spooning off most of the fat. There will be some beads of orange fat left in the strained mezcal: run that through a few layers of cheesecloth (or coffee filters in a pinch) to get rid of the last of it.

The mezcal is now ready for drinking, straight-up or in a cocktail.

Habanero tincture

Slice habaneros and add 2 ounces Ilegal Joven mezcal.
Allow to sit overnight or until desired level of heat is achieved.
Cocktail

Combine mezcal and chocolate liqueur in a mixing glass with ice and stir for 45 seconds.
Strain into chilled coupe.
Carefully "sink" the coffee liqueur down the inside of the coupe over a spoon.
Garnish with 5 drops habanero tincture.
                    ''',
        isFavourite: true,
        name: 'Empellón Cocina\'s Fat-Washed Mezcal',
        ingredients: [
          IngredientDefinition('Mezcal', '2 oz'),
          IngredientDefinition('Chocolate liqueur', '3/4 oz'),
          IngredientDefinition('Coffee liqueur', '1/2 oz'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/osgvxt1513595509.jpg',
      ),
      Cocktail(
        id: '11338',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour brandy, gin, and sweet vermouth into a highball glass over ice cubes. Fill with carbonated water. Add the twist of lemon peel, stir, and serve. (Ginger ale may be substituted for carbonated water, if preferred.)
                    ''',
        isFavourite: true,
        name: 'English Highball',
        ingredients: [
          IngredientDefinition('Brandy', '3/4 oz '),
          IngredientDefinition('Gin', '3/4 oz '),
          IngredientDefinition('Sweet Vermouth', '3/4 oz '),
          IngredientDefinition('Carbonated water', 'null'),
          IngredientDefinition('Lemon peel', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/dhvr7d1504519752.jpg',
      ),
      Cocktail(
        id: '11339',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Rub rim of cocktail glass with lemon juice and dip rim of glass in powdered sugar. Shake all ingredients (except cherry) with ice and strain into sugar-rimmed glass. Top with the cherry and serve.
                    ''',
        isFavourite: true,
        name: 'English Rose Cocktail',
        ingredients: [
          IngredientDefinition('Apricot brandy', '3/4 oz '),
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Dry Vermouth', '3/4 oz '),
          IngredientDefinition('Grenadine', '1 tsp '),
          IngredientDefinition('Lemon juice', '1/4 tsp '),
          IngredientDefinition('Cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yxwrpp1441208697.jpg',
      ),
      Cocktail(
        id: '17212',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Pour ingredients into shaker filled with ice, shake vigorously, and strain into chilled martini glass
                    ''',
        isFavourite: true,
        name: 'Espresso Martini',
        ingredients: [
          IngredientDefinition('Vodka', '5 cl'),
          IngredientDefinition('Kahlua', '1 cl'),
          IngredientDefinition('Sugar syrup', '1 dash'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/n0sx531504372951.jpg',
      ),
      Cocktail(
        id: '178309',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Mix together in a cocktail glass. Garnish with some choclate powder and coffee beans
                    ''',
        isFavourite: true,
        name: 'Espresso Rumtini',
        ingredients: [
          IngredientDefinition('Rum', '1 shot'),
          IngredientDefinition('Vanilla syrup', '1/2 shot'),
          IngredientDefinition('Espresso', '1 shot'),
          IngredientDefinition('Coffee', '1 shot'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/acvf171561574403.jpg',
      ),
      Cocktail(
        id: '13070',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Cover bottom of shot glass with Tabasco Sauce and then fill with half Firewater and half Absolut Peppar.
                    ''',
        isFavourite: true,
        name: 'Fahrenheit 5000',
        ingredients: [
          IngredientDefinition('Firewater', '1/2 oz '),
          IngredientDefinition('Absolut Peppar', '1/2 oz '),
          IngredientDefinition('Tabasco sauce', '1 dash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tysssx1473344692.jpg',
      ),
      Cocktail(
        id: '13202',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Add Amaretto, Bacardi, and vodka. Mix in the Dr. Pepper and beer
                    ''',
        isFavourite: true,
        name: 'Flaming Dr. Pepper',
        ingredients: [
          IngredientDefinition('Amaretto', '1 oz '),
          IngredientDefinition('Vodka', '1 oz '),
          IngredientDefinition('151 proof rum', '1 oz Bacardi '),
          IngredientDefinition('Dr. Pepper', '1 oz '),
          IngredientDefinition('Beer', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/d30z931503565384.jpg',
      ),
      Cocktail(
        id: '16485',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Pour the Sambuca and Kahlua into the Cocktail Glass and give the drinker a straw. Pour the Baileys and Blue Curacao into two sepsrate shot glasses either side of the cocktail glass. Set light the concotion in the cocktail glass and start to drink through the straw (this drink should be drunk in one) , as the bottom of the glass is reached put out the fire by pouring the Baileys and Blue Curacao into the cocktail glass and keep drinking till it\'s all gone!!
                    ''',
        isFavourite: true,
        name: 'Flaming Lamborghini',
        ingredients: [
          IngredientDefinition('Kahlua', '1 oz '),
          IngredientDefinition('Sambuca', '1 oz '),
          IngredientDefinition('Blue Curacao', '1 oz '),
          IngredientDefinition('Baileys irish cream', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yywpss1461866587.jpg',
      ),
      Cocktail(
        id: '13675',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Bang 'em both in.
                    ''',
        isFavourite: true,
        name: 'Flander\'s Flake-Out',
        ingredients: [
          IngredientDefinition('Sambuca', '1/4 glass '),
          IngredientDefinition('Sarsaparilla', '3/4 glass '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/sqvqrx1461866705.jpg',
      ),
      Cocktail(
        id: '11368',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      In an old-fashioned glass almost filled with ice cubes, combine the gin and triple sec. Stir well.
                    ''',
        isFavourite: true,
        name: 'Flying Dutchman',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Triple sec', '1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/mwko4q1582482903.jpg',
      ),
      Cocktail(
        id: '11369',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Flying Scotchman',
        ingredients: [
          IngredientDefinition('Scotch', '1 oz '),
          IngredientDefinition('Sweet Vermouth', '1 oz '),
          IngredientDefinition('Bitters', '1 dash '),
          IngredientDefinition('Sugar syrup', '1/4 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/q53l911582482518.jpg',
      ),
      Cocktail(
        id: '11375',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a chilled cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Foxy Lady',
        ingredients: [
          IngredientDefinition('Amaretto', '1/2 oz '),
          IngredientDefinition('Creme de Cacao', '1/2 oz '),
          IngredientDefinition('Light cream', '2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/r9cz3q1504519844.jpg',
      ),
      Cocktail(
        id: '14688',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      make it an ample size shot!!
                    ''',
        isFavourite: true,
        name: 'Freddy Kruger',
        ingredients: [
          IngredientDefinition('Jägermeister', '1/2 oz '),
          IngredientDefinition('Sambuca', '1/2 oz '),
          IngredientDefinition('Vodka', '1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tuppuq1461866798.jpg',
      ),
      Cocktail(
        id: '17197',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Combine gin, sugar, and lemon juice in a cocktail shaker filled with ice. Shake vigorously and strain into a chilled champagne glass. Top up with Champagne. Stir gently.
                    ''',
        isFavourite: true,
        name: 'French 75',
        ingredients: [
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Sugar', '2 tsp superfine '),
          IngredientDefinition('Lemon juice', '1 1/2 oz '),
          IngredientDefinition('Champagne', '4 oz Chilled '),
          IngredientDefinition('Orange', '1 '),
          IngredientDefinition('Maraschino cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/4qnyty1504368615.jpg',
      ),
      Cocktail(
        id: '17198',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Pour all ingredients directly into old fashioned glass filled with ice cubes. Stir gently.
                    ''',
        isFavourite: true,
        name: 'French Connection',
        ingredients: [
          IngredientDefinition('Cognac', '1 1/2 oz '),
          IngredientDefinition('Amaretto', '3/4 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/zaqa381504368758.jpg',
      ),
      Cocktail(
        id: '17213',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Pour all ingredients into shaker with ice cubes. Shake well and strain into a chilled cocktail glass. Squeeze oil from lemon peel onto the drink.
                    ''',
        isFavourite: true,
        name: 'French Martini',
        ingredients: [
          IngredientDefinition('Vodka', '4.5 cl'),
          IngredientDefinition('Raspberry Liqueur', '1.5 cl'),
          IngredientDefinition('pineapple juice', '1.5 cl'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/clth721504373134.jpg',
      ),
      Cocktail(
        id: '17248',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.martiniGlass,
        instruction: '''
                      Add ice to a shaker and pour in all ingredients.
Using a bar spoon, stir 40 to 45 revolutions or until thoroughly chilled.
Strain into a martini glass or over ice into a rocks glass. Garnish with orange twist.
                    ''',
        isFavourite: true,
        name: 'French Negroni',
        ingredients: [
          IngredientDefinition('Gin', '1 oz'),
          IngredientDefinition('Lillet', '1 oz'),
          IngredientDefinition('Sweet Vermouth', '1 oz'),
          IngredientDefinition('Orange Peel', '1'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/x8lhp41513703167.jpg',
      ),
      Cocktail(
        id: '11382',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.whiskeySourGlass,
        instruction: '''
                      Shake all ingredients (except slices of lemon and lime) with ice and strain into a whiskey sour glass. Decorate with the slices of lemon and lime and serve.
                    ''',
        isFavourite: true,
        name: 'Frisco Sour',
        ingredients: [
          IngredientDefinition('Blended whiskey', '2 oz '),
          IngredientDefinition('Benedictine', '1/2 oz '),
          IngredientDefinition('Lemon', '1 slice '),
          IngredientDefinition('Lime', '1 slice '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/acuvjz1582482022.jpg',
      ),
      Cocktail(
        id: '11387',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.champagneFlute,
        instruction: '''
                      Combine all ingredients (except for the cherry) in an electric blender and blend at a low speed for five seconds, then blend at a high speed until firm. Pour contents into a champagne flute, top with the cherry, and serve.
                    ''',
        isFavourite: true,
        name: 'Frozen Daiquiri',
        ingredients: [
          IngredientDefinition('Light rum', '1 1/2 oz '),
          IngredientDefinition('Triple sec', '1 tblsp '),
          IngredientDefinition('Lime juice', '1 1/2 oz '),
          IngredientDefinition('Sugar', '1 tsp '),
          IngredientDefinition('Cherry', '1 '),
          IngredientDefinition('Ice', '1 cup crushed '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/7oyrj91504884412.jpg',
      ),
      Cocktail(
        id: '11390',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Combine all ingredients with 1 cup of crushed ice in an electric blender. Blend at a low speed for a short length of time. Pour into an old-fashioned glass and serve.
                    ''',
        isFavourite: true,
        name: 'Frozen Mint Daiquiri',
        ingredients: [
          IngredientDefinition('Light rum', '2 oz '),
          IngredientDefinition('Lime juice', '1 tblsp '),
          IngredientDefinition('Mint', '6 '),
          IngredientDefinition('Sugar', '1 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/jrhn1q1504884469.jpg',
      ),
      Cocktail(
        id: '11391',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Combine all ingredients with 1 cup of crushed ice in an electric blender. Blend at a low speed for a short length of time. Pour into a cocktail glass and serve.
                    ''',
        isFavourite: true,
        name: 'Frozen Pineapple Daiquiri',
        ingredients: [
          IngredientDefinition('Light rum', '1 1/2 oz '),
          IngredientDefinition('Pineapple', '4 chunks '),
          IngredientDefinition('Lime juice', '1 tblsp '),
          IngredientDefinition('Sugar', '1/2 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/k3aecd1582481679.jpg',
      ),
      Cocktail(
        id: '178328',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Mix all ingredients together and strain into a Collins glass. Use Jamaican rum where possible for a more authentic taste.
                    ''',
        isFavourite: true,
        name: 'Funk and Soul',
        ingredients: [
          IngredientDefinition('Rum', '2 shots'),
          IngredientDefinition('Apricot Nectar', '1 shot'),
          IngredientDefinition('Pomegranate juice', '1 shot'),
          IngredientDefinition('lemon', 'Juice of 1/2'),
          IngredientDefinition('Soda Water', 'Top'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qtv83q1596015790.jpg',
      ),
      Cocktail(
        id: '15743',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      fill coffe mug half full of coffee. Fill the other half full of Peach Schnapps. Stir and drink while hot.
                    ''',
        isFavourite: true,
        name: 'Fuzzy Asshole',
        ingredients: [
          IngredientDefinition('Coffee', '1/2 '),
          IngredientDefinition('Peach schnapps', '1/2 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wrvpuu1472667898.jpg',
      ),
      Cocktail(
        id: '12758',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake well and serve in a cocktail glass. This is a home cocktail of American/Internet Bar del Pozzo, Pavia, Italy.
                    ''',
        isFavourite: true,
        name: 'Gagliardo',
        ingredients: [
          IngredientDefinition('Peach Vodka', '5 parts '),
          IngredientDefinition('Lemon juice', '3 parts '),
          IngredientDefinition('Galliano', '1 part '),
          IngredientDefinition('Sirup of roses', '1 part '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/lyloe91487602877.jpg',
      ),
      Cocktail(
        id: '11396',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      In an old-fashioned glass almost filled with ice cubes, combine all of the ingredients. Stir well.
                    ''',
        isFavourite: true,
        name: 'Gentleman\'s Club',
        ingredients: [
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Brandy', '1 oz '),
          IngredientDefinition('Sweet Vermouth', '1 oz '),
          IngredientDefinition('Club soda', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/k2r7wv1582481454.jpg',
      ),
      Cocktail(
        id: '17002',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Add all ingredients in collins glass with ice and stir.
                    ''',
        isFavourite: true,
        name: 'Gideon\'s Green Dinosaur',
        ingredients: [
          IngredientDefinition('Dark rum', '1/2 oz '),
          IngredientDefinition('Vodka', '1/2 oz '),
          IngredientDefinition('Triple sec', '1/2 oz '),
          IngredientDefinition('Tequila', '1/2 oz '),
          IngredientDefinition('Melon liqueur', '1/2 oz '),
          IngredientDefinition('Mountain Dew', 'Fill with '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/p5r0tr1503564636.jpg',
      ),
      Cocktail(
        id: '17255',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.martiniGlass,
        instruction: '''
                      Add all the ingredients to a shaker and fill with ice.

Shake, and strain into a chilled cocktail glass or an Old Fashioned glass filled with fresh ice.

Garnish with a lime wheel.
                    ''',
        isFavourite: true,
        name: 'Gimlet',
        ingredients: [
          IngredientDefinition('Gin', '2 1/2 oz'),
          IngredientDefinition('Lime Juice', '1/2 oz'),
          IngredientDefinition('Sugar Syrup', '1/2 oz'),
          IngredientDefinition('Lime', '1'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/3xgldt1513707271.jpg',
      ),
      Cocktail(
        id: '11403',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour the gin and the tonic water into a highball glass almost filled with ice cubes. Stir well. Garnish with the lime wedge.
                    ''',
        isFavourite: true,
        name: 'Gin And Tonic',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Tonic water', '5 oz '),
          IngredientDefinition('Lime', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/z0omyp1582480573.jpg',
      ),
      Cocktail(
        id: '178314',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Muddle Basil leaves (~ 10) with Suggar Syrup in a shaker. Add Gin an Lemon Juice.
Filter and serve in a tumbler with ice
                    ''',
        isFavourite: true,
        name: 'Gin Basil Smash',
        ingredients: [
          IngredientDefinition('Gin', '6 cl'),
          IngredientDefinition('Lemon Juice', '2 cl'),
          IngredientDefinition('Sugar Syrup', '2 cl'),
          IngredientDefinition('Basil', 'Whole'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/jqh2141572807327.jpg',
      ),
      Cocktail(
        id: '11407',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Stir powdered sugar and 2 oz. carbonated water in a collins glass. Fill glass with ice and add gin. Fill with carbonated water and stir. Add the lemon peel and the orange spiral so that the end of the orange spiral dangles over rim of glass.
                    ''',
        isFavourite: true,
        name: 'Gin Cooler',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Carbonated water', 'null'),
          IngredientDefinition('Powdered sugar', 'null'),
          IngredientDefinition('Orange spiral', 'null'),
          IngredientDefinition('Lemon peel', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/678xt11582481163.jpg',
      ),
      Cocktail(
        id: '11408',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine the gin, lemon juice, sugar, and grenadine. Shake well. Pour into an old-fashioned glass and garnish with the cherry and the orange slice.
                    ''',
        isFavourite: true,
        name: 'Gin Daisy',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Lemon juice', '1 oz '),
          IngredientDefinition('Sugar', '1/2 tsp superfine '),
          IngredientDefinition('Grenadine', '1/2 tsp '),
          IngredientDefinition('Maraschino cherry', '1 '),
          IngredientDefinition('Orange', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/z6e22f1582581155.jpg',
      ),
      Cocktail(
        id: '11410',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Shake all ingredients with ice cubes, except soda water. Pour into glass. Top with soda water.
                    ''',
        isFavourite: true,
        name: 'Gin Fizz',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Lemon', 'Juice of 1/2 '),
          IngredientDefinition('Powdered sugar', '1 tsp '),
          IngredientDefinition('Carbonated water', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xhl8q31504351772.jpg',
      ),
      Cocktail(
        id: '17230',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Half-fill a tall glass with ice. Mix the gin and Grenadine together and pour over the ice. Add the lime or lemon juice and top off with soda water. Decorate the glass with lime and/or lemon slices.
                    ''',
        isFavourite: true,
        name: 'Gin Rickey',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Grenadine', '1 tsp '),
          IngredientDefinition('lemon', 'Juice of 1/2 '),
          IngredientDefinition('Soda Water', 'Top up with'),
          IngredientDefinition('Lime', 'Garnish'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/s00d6f1504883945.jpg',
      ),
      Cocktail(
        id: '11415',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Dissolve powdered sugar in mixture of water and juice of lemon. Add gin. Pour into an old-fashioned glass over ice cubes and stir. Add the twist of orange peel and serve.
                    ''',
        isFavourite: true,
        name: 'Gin Sling',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Lemon', 'Juice of 1/2 '),
          IngredientDefinition('Powdered sugar', '1 tsp '),
          IngredientDefinition('Water', '1 tsp '),
          IngredientDefinition('Orange peel', 'Twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/8cl9sm1582581761.jpg',
      ),
      Cocktail(
        id: '11416',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Muddle sugar with carbonated water and mint sprigs in an old-fashioned glass. Add gin and 1 ice cube. Stir, add the orange slice and the cherry, and serve.
                    ''',
        isFavourite: true,
        name: 'Gin Smash',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Carbonated water', '1 oz '),
          IngredientDefinition('Sugar', '1 cube '),
          IngredientDefinition('Mint', '4 '),
          IngredientDefinition('Orange', '1 slice '),
          IngredientDefinition('Cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/hp41fi1504883656.jpg',
      ),
      Cocktail(
        id: '11417',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.whiskeySourGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine the gin, lemon juice, and sugar. Shake well. Strain into a sour glass and garnish with the orange slice and the cherry.
                    ''',
        isFavourite: true,
        name: 'Gin Sour',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Lemon juice', '1 oz '),
          IngredientDefinition('Sugar', '1/2 tsp superfine '),
          IngredientDefinition('Orange', '1 '),
          IngredientDefinition('Maraschino cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/mt7l7m1504883523.jpg',
      ),
      Cocktail(
        id: '11418',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Stir gin, grenadine, and powdered sugar with ice and strain into a highball glass over ice cubes. Fill with carbonated water and stir. Decorate with the pineapple chunks and the strawberries and serve.
                    ''',
        isFavourite: true,
        name: 'Gin Squirt',
        ingredients: [
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Grenadine', '1 tsp '),
          IngredientDefinition('Powdered sugar', '1 tblsp '),
          IngredientDefinition('Pineapple', '3 chunks'),
          IngredientDefinition('Strawberries', '2 '),
          IngredientDefinition('Carbonated water', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xrbhz61504883702.jpg',
      ),
      Cocktail(
        id: '11419',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine the lime juice, sugar, gin, and bitters. Shake well. Almost fill a colling glass with ice cubes. Stir until the glass is frosted. Strain the mixture in the shaker into the glass and add the club soda.
                    ''',
        isFavourite: true,
        name: 'Gin Swizzle',
        ingredients: [
          IngredientDefinition('Lime juice', '1 1/2 oz '),
          IngredientDefinition('Sugar', '1 tsp superfine '),
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Bitters', '1 dash '),
          IngredientDefinition('Club soda', '3 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/sybce31504884026.jpg',
      ),
      Cocktail(
        id: '11420',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Mix powdered sugar and water in an old-fashioned glass. Add gin and one ice cube. Stir, add the twist of lemon peel, and serve.
                    ''',
        isFavourite: true,
        name: 'Gin Toddy',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Water', '2 tsp '),
          IngredientDefinition('Powdered sugar', '1/2 tsp '),
          IngredientDefinition('Lemon peel', '1 twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/jxstwf1582582101.jpg',
      ),
      Cocktail(
        id: '17175',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.wineGlass,
        instruction: '''
                      Add the cachaca, lemon juice and syrup to your boston glass. Add ice and shake until ice cold. Pour into a chilled flute and top-up with Champagne
                    ''',
        isFavourite: true,
        name: 'Girl From Ipanema',
        ingredients: [
          IngredientDefinition('Cachaca', '25 ml'),
          IngredientDefinition('Lemon Juice', '15 ml'),
          IngredientDefinition('Agave Syrup', '10 ml'),
          IngredientDefinition('Champagne', 'top up with'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xypspq1469090633.jpg',
      ),
      Cocktail(
        id: '11422',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.champagneFlute,
        instruction: '''
                      Shake all ingredients well with cracked ice, strain into a champagne flute, and serve.
                    ''',
        isFavourite: true,
        name: 'Godchild',
        ingredients: [
          IngredientDefinition('Vodka', '1 oz '),
          IngredientDefinition('Amaretto', '1 oz '),
          IngredientDefinition('Heavy cream', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/m5nhtr1504820829.jpg',
      ),
      Cocktail(
        id: '11423',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Pour all ingredients directly into old fashioned glass filled with ice cubes. Stir gently.
                    ''',
        isFavourite: true,
        name: 'Godfather',
        ingredients: [
          IngredientDefinition('Scotch', '1 1/2 oz '),
          IngredientDefinition('Amaretto', '3/4 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/e5zgao1582582378.jpg',
      ),
      Cocktail(
        id: '11424',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Pour vodka and amaretto into an old-fashioned glass over ice and serve.
                    ''',
        isFavourite: true,
        name: 'Godmother',
        ingredients: [
          IngredientDefinition('Vodka', '1 1/2 oz '),
          IngredientDefinition('Amaretto', '3/4 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/quksqg1582582597.jpg',
      ),
      Cocktail(
        id: '17199',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake with cracked ice. Strain into glass and serve.
                    ''',
        isFavourite: true,
        name: 'Golden dream',
        ingredients: [
          IngredientDefinition('Galliano', '2 parts'),
          IngredientDefinition('Triple Sec', '2 parts'),
          IngredientDefinition('orange juice', '2 parts'),
          IngredientDefinition('Cream', '1 part'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qrot6j1504369425.jpg',
      ),
      Cocktail(
        id: '15427',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Serve in an old fashioned glass.
                    ''',
        isFavourite: true,
        name: 'Grand Blue',
        ingredients: [
          IngredientDefinition('Malibu rum', '1 1/2 cl '),
          IngredientDefinition('Peach schnapps', '1 1/2 cl '),
          IngredientDefinition('Blue Curacao', '1 1/2 cl '),
          IngredientDefinition('Sweet and sour', '3 cl '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vsrsqu1472761749.jpg',
      ),
      Cocktail(
        id: '11433',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine the gin, triple sec, pineapple juice, and grenadine. Shake well. Pour into an old-fashioned glass and garnish with the pineapple slice.
                    ''',
        isFavourite: true,
        name: 'Grass Skirt',
        ingredients: [
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Triple sec', '1 oz '),
          IngredientDefinition('Pineapple juice', '1 oz '),
          IngredientDefinition('Grenadine', '1/2 tsp '),
          IngredientDefinition('Pineapple', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qyvprp1473891585.jpg',
      ),
      Cocktail(
        id: '17200',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Pour ingredients into a cocktail shaker with ice. Shake briskly and then strain into a chilled cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Grasshopper',
        ingredients: [
          IngredientDefinition('Green Creme de Menthe', '3/4 oz '),
          IngredientDefinition('Creme de Cacao', '3/4 oz white '),
          IngredientDefinition('Light cream', '3/4 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/aqm9el1504369613.jpg',
      ),
      Cocktail(
        id: '13497',
        category: CocktailCategory.beer,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.pintGlass,
        instruction: '''
                      Cider First, Lager then Curacao
                    ''',
        isFavourite: true,
        name: 'Green Goblin',
        ingredients: [
          IngredientDefinition('Cider', '1/2 pint hard '),
          IngredientDefinition('Lager', '1/2 pint '),
          IngredientDefinition('Blue Curacao', '1 shot '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qxprxr1454511520.jpg',
      ),
      Cocktail(
        id: '17252',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Add the vodka to a Collins glass filled with ice.
Top with grapefruit juice and stir.


                    ''',
        isFavourite: true,
        name: 'Greyhound',
        ingredients: [
          IngredientDefinition('Vodka', '1 1/2 oz'),
          IngredientDefinition('Grapefruit Juice', '3 oz'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/g5upn41513706732.jpg',
      ),
      Cocktail(
        id: '14642',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Mix Kahlua and 151 in glass. Quickly add ice and pour grenadine over ice to give ice red tint.
                    ''',
        isFavourite: true,
        name: 'Grim Reaper',
        ingredients: [
          IngredientDefinition('Kahlua', '1 oz '),
          IngredientDefinition('151 proof rum', '1 oz Bacardi '),
          IngredientDefinition('Grenadine', '1 dash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/kztu161504883192.jpg',
      ),
      Cocktail(
        id: '12762',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Served over ice. Sounds nasty, but tastes great.
                    ''',
        isFavourite: true,
        name: 'Grizzly Bear',
        ingredients: [
          IngredientDefinition('Amaretto', '1 part '),
          IngredientDefinition('Jägermeister', '1 part '),
          IngredientDefinition('Kahlua', '1 part '),
          IngredientDefinition('Milk', '2 1/2 parts '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/k6v97f1487602550.jpg',
      ),
      Cocktail(
        id: '16262',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.beerMug,
        instruction: '''
                      Mix the whisky and Baileys Cream in a beer-glass (at least 50 cl). Fill the rest of the glass with coffee.
                    ''',
        isFavourite: true,
        name: 'H.D.',
        ingredients: [
          IngredientDefinition('Whisky', '4 cl '),
          IngredientDefinition('Baileys irish cream', '8 cl '),
          IngredientDefinition('Coffee', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/upusyu1472667977.jpg',
      ),
      Cocktail(
        id: '178313',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.punchBowl,
        instruction: '''
                      Tip the cherry juice, orange peel, chilli, cinnamon sticks, cloves and ginger into a large saucepan. Simmer for 5 mins, then turn off the heat. Leave to cool, then chill for at least 4 hrs, or up to 2 days – the longer you leave it the more intense the flavours. If serving to young children, take the chilli out after a few hours.

When you’re ready to serve, pour the juice into a jug. Serve in glass bottles or glasses and pop a straw in each. If you're adding vodka, do so at this stage. Dangle a fangs sweet from each glass.
                    ''',
        isFavourite: true,
        name: 'Halloween Punch',
        ingredients: [
          IngredientDefinition('Cherry Juice', '1 bottle'),
          IngredientDefinition('Orange Peel', '3'),
          IngredientDefinition('Red Chili Flakes', '1'),
          IngredientDefinition('Cloves', '10'),
          IngredientDefinition('Ginger', '6'),
          IngredientDefinition('Vodka', '20 cl'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/7hcgyj1571687671.jpg',
      ),
      Cocktail(
        id: '12766',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour Captain Morgan\'s Spiced Rum over ice, fill glass to top with Ginger Ale. Garnish with lime. Tastes like a cream soda. Named for the Gilligan\'s Island reference ("The Captain" *in* "Ginger" is a Happy Skipper!)
                    ''',
        isFavourite: true,
        name: 'Happy Skipper',
        ingredients: [
          IngredientDefinition('Spiced rum', '1 1/2 cl '),
          IngredientDefinition('Ginger ale', 'null'),
          IngredientDefinition('Lime', 'null'),
          IngredientDefinition('Ice', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/42w2g41487602448.jpg',
      ),
      Cocktail(
        id: '11462',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Stir the vodka and orange juice with ice in the glass, then float the Galliano on top. Garnish and serve.
                    ''',
        isFavourite: true,
        name: 'Harvey Wallbanger',
        ingredients: [
          IngredientDefinition('Vodka', '1 oz '),
          IngredientDefinition('Galliano', '1/2 oz '),
          IngredientDefinition('Orange juice', '4 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vg4bva1504369725.jpg',
      ),
      Cocktail(
        id: '11470',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Havana Cocktail',
        ingredients: [
          IngredientDefinition('Light rum', '1 oz '),
          IngredientDefinition('Pineapple juice', '1 oz '),
          IngredientDefinition('Lemon juice', '1 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/59splc1504882899.jpg',
      ),
      Cocktail(
        id: '11472',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Hawaiian Cocktail',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Triple sec', '1/2 oz '),
          IngredientDefinition('Pineapple juice', '1 tblsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ujoh9x1504882987.jpg',
      ),
      Cocktail(
        id: '17201',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Pour all ingredients into a shaker with ice. Shake.
                    ''',
        isFavourite: true,
        name: 'Hemingway Special',
        ingredients: [
          IngredientDefinition('Rum', '12 parts'),
          IngredientDefinition('Grapefruit Juice', '8 parts'),
          IngredientDefinition('Maraschino Liqueur', '3 parts'),
          IngredientDefinition('Lime Juice', '3 parts'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/jfcvps1504369888.jpg',
      ),
      Cocktail(
        id: '15813',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.masonJar,
        instruction: '''
                      Pour Hot Damn 100 in bottom of a jar or regular glass. Fill the rest of the glass with sweet tea. Stir with spoon, straw, or better yet a cinnamon stick and leave it in.
                    ''',
        isFavourite: true,
        name: 'Herbal flame',
        ingredients: [
          IngredientDefinition('Hot Damn', '5 shots '),
          IngredientDefinition('Tea', 'very sweet '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rrstxv1441246184.jpg',
      ),
      Cocktail(
        id: '11476',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir all ingredients (except olive) with ice and strain into a cocktail glass. Add the olive and serve.
                    ''',
        isFavourite: true,
        name: 'Highland Fling Cocktail',
        ingredients: [
          IngredientDefinition('Scotch', '1 1/2 oz '),
          IngredientDefinition('Sweet Vermouth', '3/4 oz '),
          IngredientDefinition('Orange bitters', '2 dashes '),
          IngredientDefinition('Olive', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/0bkwca1492975553.jpg',
      ),
      Cocktail(
        id: '17044',
        category: CocktailCategory.homemadeLiqueur,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Dissolve sugar in 2 cups of boiling water and add corn syrup. Dissolve the instant coffee in the remaining water. Pour syrup and coffee in a gallon jug. Let it cool. Add vodka and vanilla when cold. For the best result, let the mixture "mature" for 4-5 weeks.
                    ''',
        isFavourite: true,
        name: 'Homemade Kahlua',
        ingredients: [
          IngredientDefinition('Sugar', '2 1/2 cups '),
          IngredientDefinition('Corn syrup', '1 cup '),
          IngredientDefinition('Coffee', '1 1/2 oz instant '),
          IngredientDefinition('Vanilla extract', '2 oz '),
          IngredientDefinition('Water', '3 cups boiling '),
          IngredientDefinition('Vodka', '1 fifth '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uwtsst1441254025.jpg',
      ),
      Cocktail(
        id: '178316',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.margaritaGlass,
        instruction: '''
                      Shake ingredients with crushed ice

                    ''',
        isFavourite: true,
        name: 'Honey Bee',
        ingredients: [
          IngredientDefinition('White Rum', '6 cl'),
          IngredientDefinition('Honey', '2 cl'),
          IngredientDefinition('Lemon Juice', '2 cl'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vu8l7t1582475673.jpg',
      ),
      Cocktail(
        id: '17202',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour brandy and ginger ale directly into highball glass with ice cubes. Stir gently. Garnish with lemon zest. If desired, add dashes of Angostura Bitter.
                    ''',
        isFavourite: true,
        name: 'Horse\'s Neck',
        ingredients: [
          IngredientDefinition('Lemon peel', '1 long strip '),
          IngredientDefinition('Brandy', '2 oz '),
          IngredientDefinition('Ginger ale', '5 oz '),
          IngredientDefinition('Bitters', '2 dashes '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/006k4e1504370092.jpg',
      ),
      Cocktail(
        id: '14782',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.irishCoffeeCup,
        instruction: '''
                      Combine all ingredients in glass
                    ''',
        isFavourite: true,
        name: 'Hot Creamy Bush',
        ingredients: [
          IngredientDefinition('Irish whiskey', '1 shot '),
          IngredientDefinition('Baileys irish cream', '3/4 shot '),
          IngredientDefinition('Coffee', '6 oz hot '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/spvrtp1472668037.jpg',
      ),
      Cocktail(
        id: '17239',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.balloonGlass,
        instruction: '''
                      Put the Bombay Sapphire, Martini Bianco, sugar syrup & blackberries in a cocktail shaker with lots of ice and shake vigorously before pouring into a balloon glass, topping up with lemonade and garnishing with a wedge of orange.
                    ''',
        isFavourite: true,
        name: 'Hunter\'s Moon',
        ingredients: [
          IngredientDefinition('Vermouth', '25 ml'),
          IngredientDefinition('Maraschino Cherry', '15 ml'),
          IngredientDefinition('Sugar Syrup', '10 ml'),
          IngredientDefinition('Lemonade', '100 ml'),
          IngredientDefinition('Blackberries', '2'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/t0iugg1509556712.jpg',
      ),
      Cocktail(
        id: '13539',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Put Vodka in glass fill with iced tea. Stir in lemon to taste.
                    ''',
        isFavourite: true,
        name: 'Ice Pick #1',
        ingredients: [
          IngredientDefinition('Vodka', '1 1/2 oz '),
          IngredientDefinition('Iced tea', '6 oz '),
          IngredientDefinition('Lemon juice', ' to taste'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ypsrqp1469091726.jpg',
      ),
      Cocktail(
        id: '12772',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      Mix together in a coffee mug and chill before serving.
                    ''',
        isFavourite: true,
        name: 'Iced Coffee Fillip',
        ingredients: [
          IngredientDefinition('Kahlua', '2 tsp '),
          IngredientDefinition('Coffee', 'Strong cold '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/sxtxrp1454514223.jpg',
      ),
      Cocktail(
        id: '12706',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake with ice and strain into cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Imperial Cocktail',
        ingredients: [
          IngredientDefinition('Lime juice', '4 cl '),
          IngredientDefinition('Gin', '2 cl '),
          IngredientDefinition('Aperol', '4 cl '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/bcsj2e1487603625.jpg',
      ),
      Cocktail(
        id: '11524',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Shake all ingredients (except carbonated water) with ice and strain into a highball glass over two ice cubes. Fill with carbonated water, stir, and serve.
                    ''',
        isFavourite: true,
        name: 'Imperial Fizz',
        ingredients: [
          IngredientDefinition('Light rum', '1/2 oz '),
          IngredientDefinition('Blended whiskey', '1 1/2 oz '),
          IngredientDefinition('Lemon', 'Juice of 1/2 '),
          IngredientDefinition('Powdered sugar', '1 tsp '),
          IngredientDefinition('Carbonated water', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/zj1usl1504884548.jpg',
      ),
      Cocktail(
        id: '13971',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.irishCoffeeCup,
        instruction: '''
                      Heat the coffee, whiskey and sugar; do not boil. Pour into glass and top with cream; serve hot.
                    ''',
        isFavourite: true,
        name: 'Irish Coffee',
        ingredients: [
          IngredientDefinition('Irish whiskey', '1 1/2 oz '),
          IngredientDefinition('Coffee', '8 oz '),
          IngredientDefinition('Sugar', '1 tsp '),
          IngredientDefinition('Whipped cream', '1 tblsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/sywsqw1439906999.jpg',
      ),
      Cocktail(
        id: '12820',
        category: CocktailCategory.homemadeLiqueur,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.irishCoffeeCup,
        instruction: '''
                      Mix scotch and milk. Add half-and-half. Add rest.
                    ''',
        isFavourite: true,
        name: 'Irish Cream',
        ingredients: [
          IngredientDefinition('Scotch', '1 cup '),
          IngredientDefinition('Half-and-half', '1 1/4 cup '),
          IngredientDefinition('Condensed milk', '1 can sweetened '),
          IngredientDefinition('Coconut syrup', '3 drops '),
          IngredientDefinition('Chocolate syrup', '1 tblsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/90etyl1504884699.jpg',
      ),
      Cocktail(
        id: '16987',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour Irish Cream, Vodka, and Bourbon in a glass. Add some ice and mix in the orange juice.
                    ''',
        isFavourite: true,
        name: 'Irish Curdling Cow',
        ingredients: [
          IngredientDefinition('Baileys irish cream', '3/4 oz '),
          IngredientDefinition('Bourbon', '3/4 oz '),
          IngredientDefinition('Vodka', '3/4 oz '),
          IngredientDefinition('Orange juice', '2-3 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yrhutv1503563730.jpg',
      ),
      Cocktail(
        id: '17015',
        category: CocktailCategory.beer,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Add the ingredients in the order listed in the recipe. Care must be taken when adding the Guinness to prevent an excess of foam. Do Not add ice.
                    ''',
        isFavourite: true,
        name: 'Irish Russian',
        ingredients: [
          IngredientDefinition('Vodka', '1 shot '),
          IngredientDefinition('Kahlua', '1 shot '),
          IngredientDefinition('Coca-Cola', '1 dash '),
          IngredientDefinition('Guinness stout', 'Fill with '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/swqurw1454512730.jpg',
      ),
      Cocktail(
        id: '11528',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Pour all ingredients (except orange slice and cherry) into a collins glass over ice cubes. Garnish with the slice of orange, add the cherry on top, and serve.
                    ''',
        isFavourite: true,
        name: 'Irish Spring',
        ingredients: [
          IngredientDefinition('Irish whiskey', '1 oz '),
          IngredientDefinition('Peach brandy', '1/2 oz '),
          IngredientDefinition('Orange juice', '1 oz '),
          IngredientDefinition('Sweet and sour', '1 oz '),
          IngredientDefinition('Orange', '1 slice '),
          IngredientDefinition('Cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/sot8v41504884783.jpg',
      ),
      Cocktail(
        id: '11542',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Jack Rose Cocktail',
        ingredients: [
          IngredientDefinition('Apple brandy', '1 1/2 oz '),
          IngredientDefinition('Grenadine', '1 tsp '),
          IngredientDefinition('Lime', 'Juice of 1/2 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uuqqrv1439907068.jpg',
      ),
      Cocktail(
        id: '16275',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      After pouring in your ingredients, and adding 3-5 ice cubes, according to taste. Stir the drink with a stirrer to get the Vanilla off the bottom.
                    ''',
        isFavourite: true,
        name: 'Jack\'s Vanilla Coke',
        ingredients: [
          IngredientDefinition('Ice', '4-5 '),
          IngredientDefinition('Tennessee whiskey', '2 oz '),
          IngredientDefinition('Vanilla extract', '1 tsp '),
          IngredientDefinition('Coca-Cola', '10-12 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/kjnt7z1504793319.jpg',
      ),
      Cocktail(
        id: '13847',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Serve over ice- Warning,Deadly!
                    ''',
        isFavourite: true,
        name: 'Jackhammer',
        ingredients: [
          IngredientDefinition('Jack Daniels', '1 oz '),
          IngredientDefinition('Amaretto', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/9von5j1504388896.jpg',
      ),
      Cocktail(
        id: '17178',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Coat the rim of a shot glass with sugar using sugar syrup to stick. Add the Chambord raspberry liqueur to the shot glass, and carefully layer the Baileys Irish Cream on top. Serve.
                    ''',
        isFavourite: true,
        name: 'Jam Donut',
        ingredients: [
          IngredientDefinition('Baileys irish cream', '2/3 oz'),
          IngredientDefinition('Chambord raspberry liqueur', '1/3 oz'),
          IngredientDefinition('Sugar syrup', '1 tsp'),
          IngredientDefinition('Sugar', '2 pinches'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uuytrp1474039804.jpg',
      ),
      Cocktail(
        id: '14095',
        category: CocktailCategory.milkFloatShake,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.hurricaneGlass,
        instruction: '''
                      Fill a tumbler with ice cubes. Add a shot of Tia Maria and a shot of Jamaican light rum. Fill the tumbler with milk. Blend until smooth and serve immediately.
                    ''',
        isFavourite: true,
        name: 'Jamaica Kiss',
        ingredients: [
          IngredientDefinition('Coffee liqueur', '1 shot '),
          IngredientDefinition('Light rum', '1 shot Jamaican '),
          IngredientDefinition('Ice', 'cubes'),
          IngredientDefinition('Milk', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/urpvvv1441249549.jpg',
      ),
      Cocktail(
        id: '15825',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.champagneFlute,
        instruction: '''
                      Stir the rum, coffee and water together. Top with the whipped cream. Sprinkle with a pinch of well ground coffee and drink with a straw.
                    ''',
        isFavourite: true,
        name: 'Jamaican Coffee',
        ingredients: [
          IngredientDefinition('Rum', '1/6 glass '),
          IngredientDefinition('Coffee', '1/6 glass strong black '),
          IngredientDefinition('Water', '1/2 glass cold '),
          IngredientDefinition('Whipped cream', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xqptps1441247257.jpg',
      ),
      Cocktail(
        id: '11558',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Shake all ingredients (except carbonated water) with ice and strain into a highball glass over two ice cubes. Fill with carbonated water, stir, and serve.
                    ''',
        isFavourite: true,
        name: 'Japanese Fizz',
        ingredients: [
          IngredientDefinition('Blended whiskey', '1 1/2 oz '),
          IngredientDefinition('Lemon', 'Juice of 1/2 '),
          IngredientDefinition('Powdered sugar', '1 tsp '),
          IngredientDefinition('Port', '1 tblsp'),
          IngredientDefinition('Egg white', '1 '),
          IngredientDefinition('Carbonated water', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/37vzv11504884831.jpg',
      ),
      Cocktail(
        id: '14956',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Boil 3 cups of water then add jello. Mix jello and water until jello is completely disolved. Add the two cups of vodka and mix together. Pour mixture into plastic shot glasses and chill until firm. Then, eat away...
                    ''',
        isFavourite: true,
        name: 'Jello shots',
        ingredients: [
          IngredientDefinition('Vodka', '2 cups '),
          IngredientDefinition('Jello', '3 packages '),
          IngredientDefinition('Water', '3 cups '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/l0smzo1504884904.jpg',
      ),
      Cocktail(
        id: '13775',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cordialGlass,
        instruction: '''
                      mix equal parts in pony glass-tastes just like a jelly bean!
                    ''',
        isFavourite: true,
        name: 'Jelly Bean',
        ingredients: [
          IngredientDefinition('Blackberry brandy', '1 oz '),
          IngredientDefinition('Anis', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/bglc6y1504388797.jpg',
      ),
      Cocktail(
        id: '11566',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      In a mixing glass half-filled with ice cubes, combine all of the ingredients. Stir well. Strain into a cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Jewel Of The Nile',
        ingredients: [
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Green Chartreuse', '1/2 oz '),
          IngredientDefinition('Yellow Chartreuse', '1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/hx4nrb1504884947.jpg',
      ),
      Cocktail(
        id: '16178',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Wet glass, dip rim in sugar. Then add Ice. Then add everything else. It\'s that simple!
                    ''',
        isFavourite: true,
        name: 'Jitterbug',
        ingredients: [
          IngredientDefinition('Gin', '2 jiggers '),
          IngredientDefinition('Vodka', '1 jigger '),
          IngredientDefinition('Grenadine', '3 dashes '),
          IngredientDefinition('Lime juice', '1 shot '),
          IngredientDefinition('Sugar', 'Around rim put 1 pinch '),
          IngredientDefinition('Sugar syrup', '3 dashes '),
          IngredientDefinition('Soda water', 'Fill to top with '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wwqvrq1441245318.jpg',
      ),
      Cocktail(
        id: '11580',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Pour all ingredients directly into highball glass filled with ice. Stir gently. Garnish. Add a dash of Angostura bitters.
                    ''',
        isFavourite: true,
        name: 'John Collins',
        ingredients: [
          IngredientDefinition('Bourbon', '2 oz '),
          IngredientDefinition('Lemon juice', '1 oz '),
          IngredientDefinition('Sugar', '1 tsp superfine '),
          IngredientDefinition('Club soda', '3 oz '),
          IngredientDefinition('Maraschino cherry', '1 '),
          IngredientDefinition('Orange', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/u5yaxl1504350270.jpg',
      ),
      Cocktail(
        id: '11600',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients together with ice. Strain into glass, garnish and serve.
                    ''',
        isFavourite: true,
        name: 'Kamikaze',
        ingredients: [
          IngredientDefinition('Vodka', '1 oz '),
          IngredientDefinition('Triple sec', '1 oz '),
          IngredientDefinition('Lime juice', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xa58bb1504373204.jpg',
      ),
      Cocktail(
        id: '12764',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Put a copper coin in a coffe-cup and fill up with coffee until you no longer see the coin, then add alcohol until you see the coin. Norwegian speciality.
                    ''',
        isFavourite: true,
        name: 'Karsk',
        ingredients: [
          IngredientDefinition('Coffee', '1 part '),
          IngredientDefinition('Grain alcohol', '2 parts '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/808mxk1487602471.jpg',
      ),
      Cocktail(
        id: '11602',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.brandySnifter,
        instruction: '''
                      Pour the bourbon and Benedictine into a brandy snifter.
                    ''',
        isFavourite: true,
        name: 'Kentucky B And B',
        ingredients: [
          IngredientDefinition('Bourbon', '2 oz '),
          IngredientDefinition('Benedictine', '1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/sqxsxp1478820236.jpg',
      ),
      Cocktail(
        id: '11604',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes combine the courbon and Benedictine. Shake and strain into a cocktail glass. Garnish with the lemon twist.
                    ''',
        isFavourite: true,
        name: 'Kentucky Colonel',
        ingredients: [
          IngredientDefinition('Bourbon', '3 oz '),
          IngredientDefinition('Benedictine', '1/2 oz '),
          IngredientDefinition('Lemon peel', '1 twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/utqwpu1478820348.jpg',
      ),
      Cocktail(
        id: '16951',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      Stir. Add whipped cream to the top.
                    ''',
        isFavourite: true,
        name: 'Kioki Coffee',
        ingredients: [
          IngredientDefinition('Kahlua', '1 oz '),
          IngredientDefinition('Brandy', '1/2 oz '),
          IngredientDefinition('Coffee', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uppqty1441247374.jpg',
      ),
      Cocktail(
        id: '17203',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.wineGlass,
        instruction: '''
                      Add the crème de cassis to the bottom of the glass, then top up with wine.
                    ''',
        isFavourite: true,
        name: 'Kir',
        ingredients: [
          IngredientDefinition('Creme de Cassis', '1 part '),
          IngredientDefinition('Champagne', '5 parts '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/apneom1504370294.jpg',
      ),
      Cocktail(
        id: '13837',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.champagneFlute,
        instruction: '''
                      Pour Creme de cassis in glass, gently pour champagne on top
                    ''',
        isFavourite: true,
        name: 'Kir Royale',
        ingredients: [
          IngredientDefinition('Creme de Cassis', '1 part '),
          IngredientDefinition('Champagne', '5 parts '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yt9i7n1504370388.jpg',
      ),
      Cocktail(
        id: '15026',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      mix in the glass
                    ''',
        isFavourite: true,
        name: 'Kiss me Quick',
        ingredients: [
          IngredientDefinition('Cranberry vodka', '4 cl '),
          IngredientDefinition('Apfelkorn', '2 cl '),
          IngredientDefinition('Schweppes Russchian', '7 cl '),
          IngredientDefinition('Apple juice', '8 cl '),
          IngredientDefinition('Ice', 'cubes'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/m7iaxu1504885119.jpg',
      ),
      Cocktail(
        id: '14752',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Mix in highball glass. Stirr. Garnish with slice of kiwi.
                    ''',
        isFavourite: true,
        name: 'Kiwi Lemon',
        ingredients: [
          IngredientDefinition('Kiwi liqueur', '1 part '),
          IngredientDefinition('Bitter lemon', '2 parts '),
          IngredientDefinition('Ice', 'cubes'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tpupvr1478251697.jpg',
      ),
      Cocktail(
        id: '17006',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Add Kool Aid to a double shot glass, and top with rum. Slam and shoot.
                    ''',
        isFavourite: true,
        name: 'Kool First Aid',
        ingredients: [
          IngredientDefinition('151 proof rum', '2 oz light '),
          IngredientDefinition('Kool-Aid', '1/2 tsp Tropical '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/hfp6sv1503564824.jpg',
      ),
      Cocktail(
        id: '13190',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Pour into a large glass with ice and stir. Add a little cranberry juice to taste.
                    ''',
        isFavourite: true,
        name: 'Kool-Aid Shot',
        ingredients: [
          IngredientDefinition('Vodka', '1 shot '),
          IngredientDefinition('Amaretto', '1 shot '),
          IngredientDefinition('Sloe gin', '1 shot '),
          IngredientDefinition('Triple sec', '1 shot '),
          IngredientDefinition('Cranberry juice', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/fegm621503564966.jpg',
      ),
      Cocktail(
        id: '14446',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Fill half the shot glass with the kool-aid first. Then put a paper towel over the top of the glass and slowly pour in the vodka. If you do it right, you should be able to see that the two liquids are separated, with the vodka on top. Now slam it! The last thing you'll taste is the kool-aid.
                    ''',
        isFavourite: true,
        name: 'Kool-Aid Slammer',
        ingredients: [
          IngredientDefinition('Kool-Aid', '1/2 oz Grape '),
          IngredientDefinition('Vodka', '1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/kugu2m1504735473.jpg',
      ),
      Cocktail(
        id: '14456',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.champagneFlute,
        instruction: '''
                      Pour Absolut Kurant into a comfortably big tea-cup. Add the not too hot(!) apple tea and, if you like, some sugar. Enjoy!
                    ''',
        isFavourite: true,
        name: 'Kurant Tea',
        ingredients: [
          IngredientDefinition('Absolut Kurant', '4 cl '),
          IngredientDefinition('Tea', 'Turkish apple '),
          IngredientDefinition('Sugar', ' (if needed)'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xrsrpr1441247464.jpg',
      ),
      Cocktail(
        id: '11634',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients (except carbonated water) with ice and strain into a cocktail glass over two ice cubes. Fill with carbonated water, stir, and serve.
                    ''',
        isFavourite: true,
        name: 'Lady Love Fizz',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Light cream', '2 tsp '),
          IngredientDefinition('Powdered sugar', '1 tsp '),
          IngredientDefinition('Lemon', 'Juice of 1/2'),
          IngredientDefinition('Egg white', '1 '),
          IngredientDefinition('Carbonated water', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/20d63k1504885263.jpg',
      ),
      Cocktail(
        id: '178335',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Mix the coconut liqueur (preferably tequila) with the grapefruit juice and top with soda water. Garnish with a large grapefruit slice against the inside of the glass.
                    ''',
        isFavourite: true,
        name: 'Lazy Coconut Paloma',
        ingredients: [
          IngredientDefinition('Coconut Liqueur', '30 ml'),
          IngredientDefinition('Grapefruit Juice', '75 ml'),
          IngredientDefinition('Soda Water', 'Top'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rytuex1598719770.jpg',
      ),
      Cocktail(
        id: '14366',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake and strain into a chilled cocktail glass rimmed with sugar.
                    ''',
        isFavourite: true,
        name: 'Lemon Drop',
        ingredients: [
          IngredientDefinition('Absolut Vodka', '1 1/2 shot '),
          IngredientDefinition('Cointreau', '1 1/2 shot '),
          IngredientDefinition('Lemon', 'Juice of 1 wedge '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/mtpxgk1504373297.jpg',
      ),
      Cocktail(
        id: '12752',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Mix Galliano and Absolut Citron in a shot glass, lay lemon wedge sprinkled with sugar over glass and pour a rum over wedge and glass. light rum with a lighter and let burn for a second. Do shot quickly and suck on lemon. If it is done correctly, this will taste like a shot of sweet lemonade.
                    ''',
        isFavourite: true,
        name: 'Lemon Shot',
        ingredients: [
          IngredientDefinition('Galliano', '1/2 oz '),
          IngredientDefinition('Absolut Citron', '1/2 oz '),
          IngredientDefinition('Lemon', ' wedge'),
          IngredientDefinition('Sugar', 'Bacardi'),
          IngredientDefinition('151 proof rum', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/mx31hv1487602979.jpg',
      ),
      Cocktail(
        id: '15086',
        category: CocktailCategory.beer,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.beerGlass,
        instruction: '''
                      Open the Corona. Fill the empty space in the neck in the bottle with the rum. The bottle should be filled to the top. Plug the bottle with your thumb or the palm of your hand. Turn the bottle upside-down so the rum and beer mix. Turn the bottle rightside-up, unplug, and drink.
                    ''',
        isFavourite: true,
        name: 'Limona Corona',
        ingredients: [
          IngredientDefinition('Corona', '1 bottle '),
          IngredientDefinition('Bacardi Limon', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wwqrsw1441248662.jpg',
      ),
      Cocktail(
        id: '11658',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      In a mixing glass half-filled with ice cubes, combine the Scotch, Drambuie, and vermouth. Stir well. Strain into a cocktail glass. Garnish with the lemon twist.
                    ''',
        isFavourite: true,
        name: 'Loch Lomond',
        ingredients: [
          IngredientDefinition('Scotch', '2 oz '),
          IngredientDefinition('Drambuie', '1/2 oz '),
          IngredientDefinition('Dry Vermouth', '1/2 oz '),
          IngredientDefinition('Lemon peel', '1 twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rpvtpr1468923881.jpg',
      ),
      Cocktail(
        id: '11662',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      In a mixing glass half-filled with ice cubes, combine all of the ingredients. Stir well. Strain into a cocktail glass.
                    ''',
        isFavourite: true,
        name: 'London Town',
        ingredients: [
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Maraschino liqueur', '1/2 oz '),
          IngredientDefinition('Orange bitters', '2 dashes '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rpsrqv1468923507.jpg',
      ),
      Cocktail(
        id: '11664',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Lone Tree Cocktail',
        ingredients: [
          IngredientDefinition('Sweet Vermouth', '3/4 oz '),
          IngredientDefinition('Gin', '1 1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tsxpty1468923417.jpg',
      ),
      Cocktail(
        id: '11666',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Stir powdered sugar and 2 oz. carbonated water in a collins glass. Fill glass with ice, add gin and vermouth, and stir. Fill with carbonated water and stir again. Add the twist of lemon peel and the orange spiral so that the end dangles over rim of glass.
                    ''',
        isFavourite: true,
        name: 'Lone Tree Cooler',
        ingredients: [
          IngredientDefinition('Carbonated water', 'null'),
          IngredientDefinition('Gin', 'null'),
          IngredientDefinition('Dry Vermouth', 'null'),
          IngredientDefinition('Powdered sugar', 'null'),
          IngredientDefinition('Orange spiral', 'null'),
          IngredientDefinition('Lemon peel', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wsyqry1479298485.jpg',
      ),
      Cocktail(
        id: '17204',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Mix all contents in a highball glass and sitr gently. Add dash of Coca-Cola for the coloring and garnish with lemon or lime twist.
                    ''',
        isFavourite: true,
        name: 'Long Island Iced Tea',
        ingredients: [
          IngredientDefinition('Vodka', '1/2 oz '),
          IngredientDefinition('Tequila', '1/2 oz '),
          IngredientDefinition('Light rum', '1/2 oz '),
          IngredientDefinition('Gin', '1/2 oz '),
          IngredientDefinition('Coca-Cola', '1 dash '),
          IngredientDefinition('Lemon peel', 'Twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wx7hsg1504370510.jpg',
      ),
      Cocktail(
        id: '11002',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Combine all ingredients (except cola) and pour over ice in a highball glass. Add the splash of cola for color. Decorate with a slice of lemon and serve.
                    ''',
        isFavourite: true,
        name: 'Long Island Tea',
        ingredients: [
          IngredientDefinition('Vodka', '1/2 oz '),
          IngredientDefinition('Light rum', '1/2 oz '),
          IngredientDefinition('Gin', '1/2 oz '),
          IngredientDefinition('Tequila', '1/2 oz '),
          IngredientDefinition('Lemon', 'Juice of 1/2 '),
          IngredientDefinition('Coca-Cola', '1 splash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tppn6i1589574695.jpg',
      ),
      Cocktail(
        id: '13196',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Shake a tall glass with ice cubes and Angostura, coating the inside of the glass. Por the vodka onto this, add 1 slice of lime and squeeze juice out of remainder, mix with tonic, stir and voila you have a Long Vodka
                    ''',
        isFavourite: true,
        name: 'Long vodka',
        ingredients: [
          IngredientDefinition('Vodka', '5 cl '),
          IngredientDefinition('Lime', '1/2 '),
          IngredientDefinition('Angostura bitters', '4 dashes '),
          IngredientDefinition('Tonic water', '1 dl Schweppes '),
          IngredientDefinition('Ice', '4 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/9179i01503565212.jpg',
      ),
      Cocktail(
        id: '11670',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Pour the rum and Tia Maria into an old-fashioned glass almost filled with ice cubes. Stir well.
                    ''',
        isFavourite: true,
        name: 'Lord And Lady',
        ingredients: [
          IngredientDefinition('Dark rum', '1 1/2 oz '),
          IngredientDefinition('Tia maria', '1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/quwrys1468923219.jpg',
      ),
      Cocktail(
        id: '14378',
        category: CocktailCategory.beer,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.pintGlass,
        instruction: '''
                      Fill a pint glass almost full with beer. Then fill the rest with orange juice (careful not to fill it to the top). Then take the shot of Amaretto and drop it in.
                    ''',
        isFavourite: true,
        name: 'Lunch Box',
        ingredients: [
          IngredientDefinition('Beer', '3/4 bottle '),
          IngredientDefinition('Amaretto', '1 shot '),
          IngredientDefinition('Orange juice', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qywpvt1454512546.jpg',
      ),
      Cocktail(
        id: '11690',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Shake all ingredients with ice. Strain into glass. Garnish and serve with straw.
                    ''',
        isFavourite: true,
        name: 'Mai Tai',
        ingredients: [
          IngredientDefinition('Light rum', '1 oz '),
          IngredientDefinition('Orgeat syrup', '1/2 oz '),
          IngredientDefinition('Triple sec', '1/2 oz '),
          IngredientDefinition('Sweet and sour', '1 1/2 oz '),
          IngredientDefinition('Cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/twyrrp1439907470.jpg',
      ),
      Cocktail(
        id: '15224',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Add rum & trister then, add cranberry jucie,stir
                    ''',
        isFavourite: true,
        name: 'Malibu Twister',
        ingredients: [
          IngredientDefinition('Malibu rum', '2 parts '),
          IngredientDefinition('Tropicana', '2 parts '),
          IngredientDefinition('Cranberry juice', '1 part '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/2dwae41504885321.jpg',
      ),
      Cocktail(
        id: '11008',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stirred over ice, strained into a chilled glass, garnished, and served up.
                    ''',
        isFavourite: true,
        name: 'Manhattan',
        ingredients: [
          IngredientDefinition('Sweet Vermouth', '3/4 oz '),
          IngredientDefinition('Bourbon', '2 1/2 oz Blended '),
          IngredientDefinition('Angostura bitters', 'dash '),
          IngredientDefinition('Ice', '2 or 3 '),
          IngredientDefinition('Maraschino cherry', '1 '),
          IngredientDefinition('Orange peel', '1 twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/hz7p4t1589575281.jpg',
      ),
      Cocktail(
        id: '11007',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.
                    ''',
        isFavourite: true,
        name: 'Margarita',
        ingredients: [
          IngredientDefinition('Tequila', '1 1/2 oz '),
          IngredientDefinition('Triple sec', '1/2 oz '),
          IngredientDefinition('Lime juice', '1 oz '),
          IngredientDefinition('Salt', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/5noda61589575158.jpg',
      ),
      Cocktail(
        id: '17256',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Add all ingredients to a mixing glass and fill with ice.

Stir until chilled, and strain into a chilled coupe glass.
                    ''',
        isFavourite: true,
        name: 'Martinez 2',
        ingredients: [
          IngredientDefinition('Gin', '1 1/2 oz'),
          IngredientDefinition('Sweet Vermouth', '1 1/2 oz'),
          IngredientDefinition('Maraschino Liqueur', '1 tsp'),
          IngredientDefinition('Angostura Bitters', '2 dashes'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/fs6kiq1513708455.jpg',
      ),
      Cocktail(
        id: '11720',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir all ingredients (except cherry) with ice and strain into a cocktail glass. Top with the cherry and serve.
                    ''',
        isFavourite: true,
        name: 'Martinez Cocktail',
        ingredients: [
          IngredientDefinition('Gin', '1 oz '),
          IngredientDefinition('Dry Vermouth', '1 oz '),
          IngredientDefinition('Triple sec', '1/4 tsp '),
          IngredientDefinition('Orange bitters', '1 dash '),
          IngredientDefinition('Cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wwxwvr1439906452.jpg',
      ),
      Cocktail(
        id: '11728',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Straight: Pour all ingredients into mixing glass with ice cubes. Stir well. Strain in chilled martini cocktail glass. Squeeze oil from lemon peel onto the drink, or garnish with olive.
                    ''',
        isFavourite: true,
        name: 'Martini',
        ingredients: [
          IngredientDefinition('Gin', '1 2/3 oz '),
          IngredientDefinition('Dry Vermouth', '1/3 oz '),
          IngredientDefinition('Olive', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/71t8581504353095.jpg',
      ),
      Cocktail(
        id: '17188',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake and strain into a chilled large cocktail glass
                    ''',
        isFavourite: true,
        name: 'Mary Pickford',
        ingredients: [
          IngredientDefinition('Light rum', '1 1/2 oz '),
          IngredientDefinition('Pineapple juice', '1 oz '),
          IngredientDefinition('Maraschino liqueur', '1/2 tsp '),
          IngredientDefinition('Grenadine', '1/2 tsp '),
          IngredientDefinition('Maraschino cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/f9erqb1504350557.jpg',
      ),
      Cocktail(
        id: '13936',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      First: Mix pina colada with 2.5 oz. of rum with ice(set aside). Second: Mix daiquiri with 2.5 oz. of rum with ice. Third: While frozen, add pina colda mix then daiquiri mix in glass (Making sure they do not get mixed together).
                    ''',
        isFavourite: true,
        name: 'Miami Vice',
        ingredients: [
          IngredientDefinition('151 proof rum', '5 oz Bacardi '),
          IngredientDefinition('Pina colada mix', 'frozen '),
          IngredientDefinition('Daiquiri mix', 'frozen '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qvuyqw1441208955.jpg',
      ),
      Cocktail(
        id: '11766',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Midnight Cowboy',
        ingredients: [
          IngredientDefinition('Bourbon', '2 oz '),
          IngredientDefinition('Dark rum', '1 oz '),
          IngredientDefinition('Heavy cream', '1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vsxxwy1441208133.jpg',
      ),
      Cocktail(
        id: '13825',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Fill a mixer with ice and add Baileys, Kahlua, Goldshlager, and cream. Shake for 5 seconds and Strain into a double rocks glass filled with ice. Add chilled coffee Stir and enjoy!
                    ''',
        isFavourite: true,
        name: 'Midnight Manx',
        ingredients: [
          IngredientDefinition('Kahlua', '1 oz '),
          IngredientDefinition('Baileys irish cream', '1 oz '),
          IngredientDefinition('Goldschlager', 'dash '),
          IngredientDefinition('Heavy cream', '2 oz '),
          IngredientDefinition('Coffee', '2 oz Hazlenut '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uqqurp1441208231.jpg',
      ),
      Cocktail(
        id: '14842',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      If available, rim cocktail (Martini) glass with sugar syrup then dip into chocolate flakes or powder. Add ingredients into shaker with ice. Shake well then strain into cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Midnight Mint',
        ingredients: [
          IngredientDefinition('Baileys irish cream', '1 oz '),
          IngredientDefinition('White Creme de Menthe', '3/4 oz '),
          IngredientDefinition('Cream', '3/4 oz double '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/svuvrq1441208310.jpg',
      ),
      Cocktail(
        id: '17205',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.champagneFlute,
        instruction: '''
                      Ensure both ingredients are well chilled, then mix into the glass. Serve cold.
                    ''',
        isFavourite: true,
        name: 'Mimosa',
        ingredients: [
          IngredientDefinition('Champagne', 'Chilled '),
          IngredientDefinition('Orange juice', '2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/juhcuu1504370685.jpg',
      ),
      Cocktail(
        id: '17206',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      In a highball glass gently muddle the mint, sugar and water. Fill the glass with cracked ice, add Bourbon and stir well until the glass is well frosted. Garnish with a mint sprig.
                    ''',
        isFavourite: true,
        name: 'Mint Julep',
        ingredients: [
          IngredientDefinition('Mint', '4 fresh '),
          IngredientDefinition('Bourbon', '2 1/2 oz '),
          IngredientDefinition('Powdered sugar', '1 tsp '),
          IngredientDefinition('Water', '2 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/squyyq1439907312.jpg',
      ),
      Cocktail(
        id: '11786',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Shake all ingredients (except carbonated water) with ice and strain into a collins glass over ice cubes. Fill with carbonated water, stir, and serve.
                    ''',
        isFavourite: true,
        name: 'Mississippi Planters Punch',
        ingredients: [
          IngredientDefinition('Brandy', '1 oz '),
          IngredientDefinition('Light rum', '1/2 oz '),
          IngredientDefinition('Bourbon', '1/2 oz '),
          IngredientDefinition('Lemon', 'Juice of 1/2'),
          IngredientDefinition('Powdered sugar', '1 tblsp'),
          IngredientDefinition('Carbonated water', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/urpyqs1439907531.jpg',
      ),
      Cocktail(
        id: '14209',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.irishCoffeeCup,
        instruction: '''
                      pour 6 oz. of coffee in a mug or Irish coffee cup. add coca mix and chambord, mix well and top off with whipped cream.
                    ''',
        isFavourite: true,
        name: 'Mocha-Berry',
        ingredients: [
          IngredientDefinition('Coffee', '6 oz '),
          IngredientDefinition('Chambord raspberry liqueur', '2 oz '),
          IngredientDefinition('Cocoa powder', '2 tblsp '),
          IngredientDefinition('Whipped cream', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vtwyyx1441246448.jpg',
      ),
      Cocktail(
        id: '11000',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Muddle mint leaves with sugar and lime juice. Add a splash of soda water and fill the glass with cracked ice. Pour the rum and top with soda water. Garnish and serve with straw.
                    ''',
        isFavourite: true,
        name: 'Mojito',
        ingredients: [
          IngredientDefinition('Light rum', '2-3 oz '),
          IngredientDefinition('Lime', 'Juice of 1 '),
          IngredientDefinition('Sugar', '2 tsp '),
          IngredientDefinition('Mint', '2-4 '),
          IngredientDefinition('Soda water', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/3z6xdi1589574603.jpg',
      ),
      Cocktail(
        id: '15841',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Put mint with lemon juice in a glas, mash the mint with a spoon, ice, rum & fill up with club soda. Top it with Angostura.
                    ''',
        isFavourite: true,
        name: 'Mojito #3',
        ingredients: [
          IngredientDefinition('Mint', '1/2 handful '),
          IngredientDefinition('Lemon juice', '3 cl '),
          IngredientDefinition('Dark rum', '1/8 L Jamaican '),
          IngredientDefinition('Club soda', '1/8 L '),
          IngredientDefinition('Angostura bitters', '8 drops '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vwxrsw1478251483.jpg',
      ),
      Cocktail(
        id: '17189',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake well over ice cubes in a shaker, strain into a chilled cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Monkey Gland',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Benedictine', '1 tsp '),
          IngredientDefinition('Orange juice', '1/2 oz '),
          IngredientDefinition('Grenadine', '1 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/94psp81504350690.jpg',
      ),
      Cocktail(
        id: '11798',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Pour all of the ingredients into an old-fashioned glass almost filled with ice cubes. Stir well.
                    ''',
        isFavourite: true,
        name: 'Monkey Wrench',
        ingredients: [
          IngredientDefinition('Light rum', '1 1/2 oz '),
          IngredientDefinition('Grapefruit juice', '3 oz '),
          IngredientDefinition('Bitters', '1 dash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/bw2noj1582473243.jpg',
      ),
      Cocktail(
        id: '16196',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      first you put rhe absinthe, then put tequila, then put the Granadine syrup.
                    ''',
        isFavourite: true,
        name: 'Moranguito',
        ingredients: [
          IngredientDefinition('Absinthe', '2/5 '),
          IngredientDefinition('Tequila', '2/5 '),
          IngredientDefinition('Grenadine', '1/5 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/urpsyq1475667335.jpg',
      ),
      Cocktail(
        id: '11009',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.copperMug,
        instruction: '''
                      Combine vodka and ginger beer in a highball glass filled with ice. Add lime juice. Stir gently. Garnish.
                    ''',
        isFavourite: true,
        name: 'Moscow Mule',
        ingredients: [
          IngredientDefinition('Vodka', '2 oz '),
          IngredientDefinition('Lime juice', '2 oz '),
          IngredientDefinition('Ginger ale', '8 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/3pylqc1504370988.jpg',
      ),
      Cocktail(
        id: '14053',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Shake over ice, strain. Serves two.
                    ''',
        isFavourite: true,
        name: 'Mother\'s Milk',
        ingredients: [
          IngredientDefinition('Goldschlager', '1 oz '),
          IngredientDefinition('Butterscotch schnapps', '1 oz '),
          IngredientDefinition('Milk', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/7stuuh1504885399.jpg',
      ),
      Cocktail(
        id: '16041',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.punchBowl,
        instruction: '''
                      Add all contents to a large jug or punch bowl. Stir well!
                    ''',
        isFavourite: true,
        name: 'Mudslinger',
        ingredients: [
          IngredientDefinition('Southern Comfort', '750 ml '),
          IngredientDefinition('Orange juice', '1 L '),
          IngredientDefinition('Pepsi Cola', '750 ml '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/hepk6h1504885554.jpg',
      ),
      Cocktail(
        id: '12988',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Simmer 3 cups water with, sugar, cloves, cinnamon sticks, and lemon peel in a stainless steel pot for 10 minutes. Add wine heat to a "coffee temperature" (DO NOT BOIL) then add the brandy.
                    ''',
        isFavourite: true,
        name: 'Mulled Wine',
        ingredients: [
          IngredientDefinition('Water', '3 cups '),
          IngredientDefinition('Sugar', '1 cup '),
          IngredientDefinition('Cloves', '12 '),
          IngredientDefinition('Cinnamon', '2 '),
          IngredientDefinition('Lemon peel', '1 '),
          IngredientDefinition('Red wine', '750 ml '),
          IngredientDefinition('Brandy', '1/4 cup '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/iuwi6h1504735724.jpg',
      ),
      Cocktail(
        id: '178315',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Fill glass with ice
Pour Gin and Lime Juice
Fill glass with Ginger Beer
Garnish with Cucumer and Lime slice
                    ''',
        isFavourite: true,
        name: 'Munich Mule',
        ingredients: [
          IngredientDefinition('Gin', '5 cl'),
          IngredientDefinition('Lime Juice', '2 cl'),
          IngredientDefinition('Ginger Beer', '10 cl'),
          IngredientDefinition('Cucumber', 'Chopped'),
          IngredientDefinition('lemon', 'Chopped'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rj55pl1582476101.jpg',
      ),
      Cocktail(
        id: '13192',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Pour all ingredients into a shaker of ice. Shake well. Serve on the rocks.
                    ''',
        isFavourite: true,
        name: 'National Aquarium',
        ingredients: [
          IngredientDefinition('Rum', '1/2 oz '),
          IngredientDefinition('Vodka', '1/2 oz '),
          IngredientDefinition('Gin', '1/2 oz '),
          IngredientDefinition('Blue Curacao', '1/2 oz '),
          IngredientDefinition('Sour mix', '2 oz '),
          IngredientDefinition('Lemon-lime soda', '1 splash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/dlw0om1503565021.jpg',
      ),
      Cocktail(
        id: '11003',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Stir into glass over ice, garnish and serve.
                    ''',
        isFavourite: true,
        name: 'Negroni',
        ingredients: [
          IngredientDefinition('Gin', '1 oz '),
          IngredientDefinition('Campari', '1 oz '),
          IngredientDefinition('Sweet Vermouth', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qgdu971561574065.jpg',
      ),
      Cocktail(
        id: '13204',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Serve in a chilled cocktail glass. Lemon and sugar the rim. Stir and Strain.
                    ''',
        isFavourite: true,
        name: 'New York Lemonade',
        ingredients: [
          IngredientDefinition('Absolut Citron', '2 oz '),
          IngredientDefinition('Grand Marnier', '1 oz '),
          IngredientDefinition('Lemon juice', '2 oz sweetened '),
          IngredientDefinition('Club soda', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/b3n0ge1503565473.jpg',
      ),
      Cocktail(
        id: '11844',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.whiskeySourGlass,
        instruction: '''
                      Shake blended whiskey, juice of lemon, and powdered sugar with ice and strain into a whiskey sour glass. Float claret on top. Decorate with the half-slice of lemon and the cherry and serve.
                    ''',
        isFavourite: true,
        name: 'New York Sour',
        ingredients: [
          IngredientDefinition('Blended whiskey', '2 oz '),
          IngredientDefinition('Lemon', 'null'),
          IngredientDefinition('Sugar', '1 tsp '),
          IngredientDefinition('Red wine', ' (Claret)'),
          IngredientDefinition('Cherry', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/61wgch1504882795.jpg',
      ),
      Cocktail(
        id: '13861',
        category: CocktailCategory.milkFloatShake,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Serve over ice
                    ''',
        isFavourite: true,
        name: 'Nutty Irishman',
        ingredients: [
          IngredientDefinition('Baileys irish cream', '1 part '),
          IngredientDefinition('Frangelico', '1 part '),
          IngredientDefinition('Milk', '1 part '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xspupx1441248014.jpg',
      ),
      Cocktail(
        id: '17266',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.masonJar,
        instruction: '''
                      Just mix it all together.
It\'s meant to be a shot, but it works just fine as a proper adult-sized drink over lots of ice.

Tastes like an oatmeal cookie.
                    ''',
        isFavourite: true,
        name: 'Oatmeal Cookie',
        ingredients: [
          IngredientDefinition('Kahlua', '2 parts'),
          IngredientDefinition('Bailey', '2 parts'),
          IngredientDefinition('Butterscotch schnapps', '4 parts'),
          IngredientDefinition('Jagermeister', '1 part'),
          IngredientDefinition('Goldschlager', '1/2 part'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/bsvmlg1515792693.jpg',
      ),
      Cocktail(
        id: '11001',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Place sugar cube in old fashioned glass and saturate with bitters, add a dash of plain water. Muddle until dissolved.
Fill the glass with ice cubes and add whiskey.

Garnish with orange twist, and a cocktail cherry.
                    ''',
        isFavourite: true,
        name: 'Old Fashioned',
        ingredients: [
          IngredientDefinition('Bourbon', '4.5 cL'),
          IngredientDefinition('Angostura bitters', '2 dashes'),
          IngredientDefinition('Sugar', '1 cube'),
          IngredientDefinition('Water', 'dash'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vrwquq1478252802.jpg',
      ),
      Cocktail(
        id: '17827',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.nickAndNoraGlass,
        instruction: '''
                      Chill cocktail glass. Add ingredients to a mixing glass, and fill 2/3 full with ice. Stir about 20 seconds. Empty cocktail glass and strain into the glass. Garnish with a twist of lemon peel.
                    ''',
        isFavourite: true,
        name: 'Old Pal',
        ingredients: [
          IngredientDefinition('Rye whiskey', '2 oz'),
          IngredientDefinition('Campari', '1 oz'),
          IngredientDefinition('Dry Vermouth', '1 oz'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/x03td31521761009.jpg',
      ),
      Cocktail(
        id: '15330',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Add all ingredients to tumbler-Pour as shot
                    ''',
        isFavourite: true,
        name: 'Orange Crush',
        ingredients: [
          IngredientDefinition('Vodka', '1 oz '),
          IngredientDefinition('Triple sec', '1 oz '),
          IngredientDefinition('Orange juice', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/zvoics1504885926.jpg',
      ),
      Cocktail(
        id: '11870',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Shake brandy, gin, and orange juice with ice and strain into a highball glass over ice cubes. Fill with ginger ale, stir, and serve.
                    ''',
        isFavourite: true,
        name: 'Orange Oasis',
        ingredients: [
          IngredientDefinition('Cherry brandy', '1/2 oz '),
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Orange juice', '4 oz '),
          IngredientDefinition('Ginger ale', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/su1olx1582473812.jpg',
      ),
      Cocktail(
        id: '14586',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.hurricaneGlass,
        instruction: '''
                      Combine liquors in a blender. Add a half scoop of ice and blend. Garnish with an orange and cherry flag. So good it will melt in your mouth!!!
                    ''',
        isFavourite: true,
        name: 'Orange Push-up',
        ingredients: [
          IngredientDefinition('Spiced rum', '1.5 oz '),
          IngredientDefinition('Grenadine', '0.5 oz '),
          IngredientDefinition('Orange juice', '4 oz '),
          IngredientDefinition('Sour mix', '1 splash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/mgf0y91503565781.jpg',
      ),
      Cocktail(
        id: '16995',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Pour ingredients over ice and stir.
                    ''',
        isFavourite: true,
        name: 'Orange Whip',
        ingredients: [
          IngredientDefinition('Orange juice', '4 oz '),
          IngredientDefinition('Rum', '1 oz '),
          IngredientDefinition('Vodka', '1 oz '),
          IngredientDefinition('Cream', '1 package '),
          IngredientDefinition('Ice', 'Over '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ttyrxr1454514759.jpg',
      ),
      Cocktail(
        id: '13499',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Blend Vodka, Kahlua, Bailey\'s, ice-cream and the Oreo well in a blender. Pour into a large frosted glass. Garnish with whipped cream and a cherry.
                    ''',
        isFavourite: true,
        name: 'Oreo Mudslide',
        ingredients: [
          IngredientDefinition('Vodka', '1 oz '),
          IngredientDefinition('Kahlua', '1 oz '),
          IngredientDefinition('Baileys irish cream', '1 oz '),
          IngredientDefinition('Vanilla ice-cream', '2 scoops '),
          IngredientDefinition('Oreo cookie', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tpwwut1468925017.jpg',
      ),
      Cocktail(
        id: '11872',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a chilled cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Orgasm',
        ingredients: [
          IngredientDefinition('Creme de Cacao', '1/2 oz white '),
          IngredientDefinition('Amaretto', '1/2 oz '),
          IngredientDefinition('Triple sec', '1/2 oz '),
          IngredientDefinition('Vodka', '1/2 oz '),
          IngredientDefinition('Light cream', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vr6kle1504886114.jpg',
      ),
      Cocktail(
        id: '13200',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Add ingredients and mix in blender.
                    ''',
        isFavourite: true,
        name: 'Owen\'s Grandmother\'s Revenge',
        ingredients: [
          IngredientDefinition('Whiskey', '12 oz '),
          IngredientDefinition('Beer', '12 oz '),
          IngredientDefinition('Lemonade', '12 oz frozen '),
          IngredientDefinition('Ice', '1 cup crushed '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/0wt4uo1503565321.jpg',
      ),
      Cocktail(
        id: '17253',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Stir together and serve over ice.
                    ''',
        isFavourite: true,
        name: 'Paloma',
        ingredients: [
          IngredientDefinition('Grape Soda', '3 oz'),
          IngredientDefinition('Tequila', '1 1/2 oz'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/samm5j1513706393.jpg',
      ),
      Cocktail(
        id: '17190',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake together over ice. Strain into cocktail glass and serve chilled.
                    ''',
        isFavourite: true,
        name: 'Paradise',
        ingredients: [
          IngredientDefinition('Gin', '7 parts'),
          IngredientDefinition('Apricot Brandy', '4 parts'),
          IngredientDefinition('Orange Juice', '3 parts '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ejozd71504351060.jpg',
      ),
      Cocktail(
        id: '178323',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Pour all ingredients into a glass and stir. Garnish with half a passion fruit piece.
                    ''',
        isFavourite: true,
        name: 'Passion Fruit Martini',
        ingredients: [
          IngredientDefinition('Vodka', '1 shot'),
          IngredientDefinition('Sugar Syrup', '1/2 shot'),
          IngredientDefinition('Passion fruit juice', 'Full Glass'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/6trfve1582473527.jpg',
      ),
      Cocktail(
        id: '17249',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake, strain, up, cocktail glass
                    ''',
        isFavourite: true,
        name: 'Pegu Club',
        ingredients: [
          IngredientDefinition('Gin', '1 1/2 oz'),
          IngredientDefinition('Orange Curacao', '3/4 oz'),
          IngredientDefinition('Lime Juice', '3/4 oz'),
          IngredientDefinition('Angostura Bitters', '1 dash'),
          IngredientDefinition('Orange Bitters', '1 dash'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/jfkemm1513703902.jpg',
      ),
      Cocktail(
        id: '17829',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Shake blended Scotch, lemon juice, honey syrup and ginger syrup with ice. Strain over large ice in chilled rocks glass. Float smoky Scotch on top (be sure to use a smoky Scotch such as an Islay single malt). Garnish with candied ginger.
                    ''',
        isFavourite: true,
        name: 'Penicillin',
        ingredients: [
          IngredientDefinition('Blended Scotch', '2 oz'),
          IngredientDefinition('Lemon Juice', '3/4 oz'),
          IngredientDefinition('Honey syrup', '2 tsp'),
          IngredientDefinition('Ginger Syrup', '2 tsp'),
          IngredientDefinition('Islay single malt Scotch', '1/4 oz'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/hc9b1a1521853096.jpg',
      ),
      Cocktail(
        id: '17207',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Mix with crushed ice in blender until smooth. Pour into chilled glass, garnish and serve.
                    ''',
        isFavourite: true,
        name: 'Pina Colada',
        ingredients: [
          IngredientDefinition('Light rum', '3 oz '),
          IngredientDefinition('Coconut milk', '3 tblsp '),
          IngredientDefinition('Pineapple', '3 tblsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/cpf4j51504371346.jpg',
      ),
      Cocktail(
        id: '178327',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Rub the rim of each glass with lime slice and dip into salt.
Add ice, tequila, grapefruit juice, lime juice and top with pineapple soda.
Give it a quick stir.
Garnish with fresh pineapple or lime.
                    ''',
        isFavourite: true,
        name: 'Pineapple Paloma',
        ingredients: [
          IngredientDefinition('Tequila', '4 oz'),
          IngredientDefinition('Grapefruit Juice', '4 oz'),
          IngredientDefinition('Fresh Lime Juice', '1 oz'),
          IngredientDefinition('Pineapple Juice', '8 oz'),
          IngredientDefinition('Lime', 'Garnish with'),
          IngredientDefinition('Pepper', 'Rimmed'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/pg8iw31593351601.jpg',
      ),
      Cocktail(
        id: '11936',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.whiteWineGlass,
        instruction: '''
                      Pour the bitters into a wine glass. Swirl the glass to coat the inside with the bitters, shake out the excess. Pour the gin into the glass. Do not add ice.
                    ''',
        isFavourite: true,
        name: 'Pink Gin',
        ingredients: [
          IngredientDefinition('Bitters', '3 dashes '),
          IngredientDefinition('Gin', '2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qyr51e1504888618.jpg',
      ),
      Cocktail(
        id: '11938',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Pink Lady',
        ingredients: [
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Grenadine', '1 tsp '),
          IngredientDefinition('Light cream', '1 tsp '),
          IngredientDefinition('Egg white', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/5ia6j21504887829.jpg',
      ),
      Cocktail(
        id: '13535',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Shake well
                    ''',
        isFavourite: true,
        name: 'Pink Panty Pulldowns',
        ingredients: [
          IngredientDefinition('Sprite', '1 L '),
          IngredientDefinition('Pink lemonade', '2 cups '),
          IngredientDefinition('Vodka', '2 cups '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/squsuy1468926657.jpg',
      ),
      Cocktail(
        id: '16992',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.punchBowl,
        instruction: '''
                      mix all ingredients into bowl keep iced stir frequently
                    ''',
        isFavourite: true,
        name: 'Pink Penocha',
        ingredients: [
          IngredientDefinition('Everclear', '750 ml '),
          IngredientDefinition('Vodka', '1750 ml '),
          IngredientDefinition('Peach schnapps', '1750 ml '),
          IngredientDefinition('Orange juice', '1 gal '),
          IngredientDefinition('Cranberry juice', '1 gal '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/6vigjx1503564007.jpg',
      ),
      Cocktail(
        id: '13214',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Vigorously shake and strain contents in a cocktail shaker with ice cubes, then pour into glass and garnish with bitters.[1]
                    ''',
        isFavourite: true,
        name: 'Pisco Sour',
        ingredients: [
          IngredientDefinition('Pisco', '2 oz '),
          IngredientDefinition('Lemon juice', '1 oz '),
          IngredientDefinition('Sugar', '1-2 tblsp '),
          IngredientDefinition('Ice', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tsssur1439907622.jpg',
      ),
      Cocktail(
        id: '17191',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Pour all ingredients, except the bitters, into shaker filled with ice. Shake well. Pour into large glass, filled with ice. Add Angostura bitters, "on top". Garnish with cocktail cherry and pineapple.
                    ''',
        isFavourite: true,
        name: 'Planter\'s Punch',
        ingredients: [
          IngredientDefinition('Dark rum', '1 part '),
          IngredientDefinition('Orgeat syrup', '1/2 part '),
          IngredientDefinition('Orange juice', '2 parts '),
          IngredientDefinition('Pineapple juice', '1 part '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yvos231504351384.jpg',
      ),
      Cocktail(
        id: '13072',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Served over ice in a tall glass with a popped cherry (can add more popped cherries if in the mood)!
                    ''',
        isFavourite: true,
        name: 'Popped cherry',
        ingredients: [
          IngredientDefinition('Vodka', '2 oz '),
          IngredientDefinition('Cherry liqueur', '2 oz '),
          IngredientDefinition('Cranberry juice', '4 oz '),
          IngredientDefinition('Orange juice', '4 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/sxvrwv1473344825.jpg',
      ),
      Cocktail(
        id: '11959',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Poppy Cocktail',
        ingredients: [
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Creme de Cacao', '3/4 oz white '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/cslw1w1504389915.jpg',
      ),
      Cocktail(
        id: '11961',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.pousseCafeGlass,
        instruction: '''
                      Pour carefully into a pousse-cafe glass, so that creme de menthe floats on grenadine. Serve without mixing.
                    ''',
        isFavourite: true,
        name: 'Port And Starboard',
        ingredients: [
          IngredientDefinition('Grenadine', '1 tblsp '),
          IngredientDefinition('Green Creme de Menthe', '1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wxvupx1441553911.jpg',
      ),
      Cocktail(
        id: '11963',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Port Wine Cocktail',
        ingredients: [
          IngredientDefinition('Port', '2 1/2 oz '),
          IngredientDefinition('Brandy', '1/2 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qruprq1441553976.jpg',
      ),
      Cocktail(
        id: '11965',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.whiskeySourGlass,
        instruction: '''
                      Shake all ingredients (except nutmeg) with ice and strain into a whiskey sour glass. Sprinkle nutmeg on top and serve.
                    ''',
        isFavourite: true,
        name: 'Port Wine Flip',
        ingredients: [
          IngredientDefinition('Port', '1 1/2 oz '),
          IngredientDefinition('Light cream', '2 tsp '),
          IngredientDefinition('Powdered sugar', '1 tsp '),
          IngredientDefinition('Egg', '1 whole '),
          IngredientDefinition('Nutmeg', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vrprxu1441553844.jpg',
      ),
      Cocktail(
        id: '17192',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake ingredients together in a mixer with ice. Strain into glass, garnish and serve.
                    ''',
        isFavourite: true,
        name: 'Porto flip',
        ingredients: [
          IngredientDefinition('Brandy', '3 parts'),
          IngredientDefinition('Port', '9 parts'),
          IngredientDefinition('Egg Yolk', '2 parts'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/64x5j41504351518.jpg',
      ),
      Cocktail(
        id: '11983',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Quaker\'s Cocktail',
        ingredients: [
          IngredientDefinition('Light rum', '3/4 oz '),
          IngredientDefinition('Brandy', '3/4 oz '),
          IngredientDefinition('Lemon', 'Juice of 1/4 '),
          IngredientDefinition('Raspberry syrup', '2 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yrqppx1478962314.jpg',
      ),
      Cocktail(
        id: '11985',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Quarter Deck Cocktail',
        ingredients: [
          IngredientDefinition('Light rum', '1 1/2 '),
          IngredientDefinition('Sherry', '1/3 oz cream '),
          IngredientDefinition('Lime', 'Juice of 1/2 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qrwvps1478963017.jpg',
      ),
      Cocktail(
        id: '11987',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Queen Bee',
        ingredients: [
          IngredientDefinition('Coffee brandy', '1 oz '),
          IngredientDefinition('Lime vodka', '1 1/2 oz '),
          IngredientDefinition('Sherry', '1/2 oz cream '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rvvpxu1478963194.jpg',
      ),
      Cocktail(
        id: '11989',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Pour red wine and grenadine into a collins glass over ice cubes. Fill with lemon-lime soda, stir, and serve.
                    ''',
        isFavourite: true,
        name: 'Queen Charlotte',
        ingredients: [
          IngredientDefinition('Red wine', '2 oz '),
          IngredientDefinition('Grenadine', '1 oz '),
          IngredientDefinition('Lemon-lime soda', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vqruyt1478963249.jpg',
      ),
      Cocktail(
        id: '11991',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Queen Elizabeth',
        ingredients: [
          IngredientDefinition('Dry Vermouth', '1/2 oz '),
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Benedictine', '1 1/2 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vpqspv1478963339.jpg',
      ),
      Cocktail(
        id: '11993',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine the rum, Kahlua, and cream. Shake well. Strain into a cocktail glass and garnish with the nutmeg.
                    ''',
        isFavourite: true,
        name: 'Quentin',
        ingredients: [
          IngredientDefinition('Dark rum', '1 1/2 oz '),
          IngredientDefinition('Kahlua', '1/2 oz '),
          IngredientDefinition('Light cream', '1 oz '),
          IngredientDefinition('Nutmeg', '1/8 tsp grated '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/spxtqp1478963398.jpg',
      ),
      Cocktail(
        id: '13198',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      In a shot glass add 1/3 Kahlua first. Then 1/3 Miduri, topping it off with a 1/3 bailey\'s irish cream
                    ''',
        isFavourite: true,
        name: 'Quick F**K',
        ingredients: [
          IngredientDefinition('Kahlua', '1 part '),
          IngredientDefinition('Midori melon liqueur', '1 part '),
          IngredientDefinition('Baileys irish cream', '1 part '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wvtwpp1478963454.jpg',
      ),
      Cocktail(
        id: '15761',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Simply add the orange juice, quite a quick pour in order to mix the sambucca with the orange juice. The juice MUST have fruit pulp!
                    ''',
        isFavourite: true,
        name: 'Quick-sand',
        ingredients: [
          IngredientDefinition('Black Sambuca', '25 ml '),
          IngredientDefinition('Orange juice', 'Add 250 ml '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vprxqv1478963533.jpg',
      ),
      Cocktail(
        id: '16984',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Pour all ingredients over ice in a very tall glass. Sip cautiously.
                    ''',
        isFavourite: true,
        name: 'Radioactive Long Island Iced Tea',
        ingredients: [
          IngredientDefinition('Rum', '1 oz '),
          IngredientDefinition('Vodka', '1 oz '),
          IngredientDefinition('Tequila', '1 oz '),
          IngredientDefinition('Gin', '1 oz '),
          IngredientDefinition('Triple sec', '1 oz '),
          IngredientDefinition('Chambord raspberry liqueur', '1 oz '),
          IngredientDefinition('Midori melon liqueur', '1 oz '),
          IngredientDefinition('Malibu rum', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rdvqmh1503563512.jpg',
      ),
      Cocktail(
        id: '16031',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour beer into large mug, slowly add the 7-up (or Sprite).
                    ''',
        isFavourite: true,
        name: 'Radler',
        ingredients: [
          IngredientDefinition('Beer', '12 oz '),
          IngredientDefinition('7-Up', '12 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xz8igv1504888995.jpg',
      ),
      Cocktail(
        id: '17167',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour the raspberry vodka and soda into a highball glass almost filled with ice cubes. Stir well.
                    ''',
        isFavourite: true,
        name: 'Raspberry Cooler',
        ingredients: [
          IngredientDefinition('Raspberry vodka', '2 oz '),
          IngredientDefinition('Lemon-lime soda', '4 oz '),
          IngredientDefinition('Ice', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/suqyyx1441254346.jpg',
      ),
      Cocktail(
        id: '178333',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cordialGlass,
        instruction: '''
                      Softly muddle the mint leaves and raspberry syrup in the bottom of the cup. Add crushed ice and Bourbon to the cup and then stir. Top with more ice, garnish with a mint sprig.
                    ''',
        isFavourite: true,
        name: 'Raspberry Julep',
        ingredients: [
          IngredientDefinition('Bourbon', '2 oz'),
          IngredientDefinition('Raspberry syrup', '1/2 oz'),
          IngredientDefinition('Mint', '8'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/hyztmx1598719265.jpg',
      ),
      Cocktail(
        id: '14087',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      One shot each, shake n shoot
                    ''',
        isFavourite: true,
        name: 'Red Snapper',
        ingredients: [
          IngredientDefinition('Crown Royal', '1 shot '),
          IngredientDefinition('Amaretto', '1 shot '),
          IngredientDefinition('Cranberry juice', '1 shot '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/7p607y1504735343.jpg',
      ),
      Cocktail(
        id: '17208',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake together in a cocktail shaker, then strain into chilled glass. Garnish and serve.
                    ''',
        isFavourite: true,
        name: 'Rose',
        ingredients: [
          IngredientDefinition('Dry Vermouth', '1/2 oz '),
          IngredientDefinition('Gin', '1 oz '),
          IngredientDefinition('Apricot brandy', '1/2 oz '),
          IngredientDefinition('Lemon juice', '1/2 tsp '),
          IngredientDefinition('Grenadine', '1 tsp '),
          IngredientDefinition('Powdered sugar', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/8kxbvq1504371462.jpg',
      ),
      Cocktail(
        id: '17245',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.balloonGlass,
        instruction: '''
                      1) Add the Bombay Sapphire, Blue Curacao, rosemary sprig and gently squeezed lemon wedge to a balloon glass. Swirl well to combine.
2) Fill with cubed ice and top with the Fever-Tree Light Tonic Water.
3) Gently fold with a bar spoon to mix.
                    ''',
        isFavourite: true,
        name: 'Rosemary Blue',
        ingredients: [
          IngredientDefinition('Gin', '50 ml'),
          IngredientDefinition('Blue Curacao', '15 ml'),
          IngredientDefinition('Tonic Water', '100 ml'),
          IngredientDefinition('Rosemary', 'Garnish with'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qwc5f91512406543.jpg',
      ),
      Cocktail(
        id: '17122',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Into a shot glass layer the Crown Royal on top of the Frangelico.
                    ''',
        isFavourite: true,
        name: 'Royal Bitch',
        ingredients: [
          IngredientDefinition('Frangelico', '1 part '),
          IngredientDefinition('Crown Royal', '1 part '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qupuyr1441210090.jpg',
      ),
      Cocktail(
        id: '12055',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Shake all ingredients (except cola) with ice and strain into a chilled collins glass. Fill with cola and serve.
                    ''',
        isFavourite: true,
        name: 'Royal Fizz',
        ingredients: [
          IngredientDefinition('Gin', '1 oz '),
          IngredientDefinition('Sweet and sour', '2 oz '),
          IngredientDefinition('Egg', '1 whole '),
          IngredientDefinition('Coca-Cola', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wrh44j1504390609.jpg',
      ),
      Cocktail(
        id: '15082',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Pour all the ingredients into tumbler over ice. Strain into glass.
                    ''',
        isFavourite: true,
        name: 'Royal Flush',
        ingredients: [
          IngredientDefinition('Crown Royal', '1 1/2 oz '),
          IngredientDefinition('Peach schnapps', '1 oz '),
          IngredientDefinition('Chambord raspberry liqueur', '1/2 oz '),
          IngredientDefinition('Cranberry juice', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/7rnm8u1504888527.jpg',
      ),
      Cocktail(
        id: '12057',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Shake all ingredients (except carbonated water) with ice and strain into a highball glass over two ice cubes. Fill with carbonated water, stir, and serve.
                    ''',
        isFavourite: true,
        name: 'Royal Gin Fizz',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Lemon', 'Juice of 1/2 '),
          IngredientDefinition('Powdered sugar', '1 tsp '),
          IngredientDefinition('Egg', '1 whole '),
          IngredientDefinition('Carbonated water', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/pe1x1c1504735672.jpg',
      ),
      Cocktail(
        id: '17114',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour gin and cranberry into a highball filled with ice cubes. Add grenadine and stir.
                    ''',
        isFavourite: true,
        name: 'Ruby Tuesday',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Cranberry juice', '5 oz '),
          IngredientDefinition('Grenadine', '2 splashes '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qsyqqq1441553437.jpg',
      ),
      Cocktail(
        id: '12067',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      In an old-fashioned glass, dissolve the sugar in the club soda. Add crushed ice until the glass is almost full. Add the rum. Stir well. Garnish with the cherry and the orange and lemon slices.
                    ''',
        isFavourite: true,
        name: 'Rum Cobbler',
        ingredients: [
          IngredientDefinition('Sugar', '1 tsp superfine '),
          IngredientDefinition('Club soda', '3 oz '),
          IngredientDefinition('Lemon', '1 '),
          IngredientDefinition('Dark rum', '2 oz '),
          IngredientDefinition('Maraschino cherry', '1 '),
          IngredientDefinition('Orange', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/5vh9ld1504390683.jpg',
      ),
      Cocktail(
        id: '12071',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Pour the rum and soda into a collins glass almost filled with ice cubes. Stir well and garnish with the lemon wedge.
                    ''',
        isFavourite: true,
        name: 'Rum Cooler',
        ingredients: [
          IngredientDefinition('Rum', '2 oz light or dark '),
          IngredientDefinition('Lemon-lime soda', '4 oz '),
          IngredientDefinition('Lemon', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/2hgwsb1504888674.jpg',
      ),
      Cocktail(
        id: '12087',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Shake all ingredients (except nutmeg) with ice and strain into a collins glass. Sprinkle nutmeg on top and serve.
                    ''',
        isFavourite: true,
        name: 'Rum Milk Punch',
        ingredients: [
          IngredientDefinition('Light rum', '2 oz '),
          IngredientDefinition('Milk', '1 cup '),
          IngredientDefinition('Powdered sugar', '1 tsp '),
          IngredientDefinition('Nutmeg', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/w64lqm1504888810.jpg',
      ),
      Cocktail(
        id: '12089',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Stir powdered sugar, water, and bitters in an old-fashioned glass. When sugar has dissolved add ice cubes and light rum. Add the twist of lime peel, float 151 proof rum on top, and serve.
                    ''',
        isFavourite: true,
        name: 'Rum Old-fashioned',
        ingredients: [
          IngredientDefinition('Light rum', '1 1/2 oz '),
          IngredientDefinition('151 proof rum', '1 tsp '),
          IngredientDefinition('Powdered sugar', '1/2 tsp '),
          IngredientDefinition('Bitters', '1 dash '),
          IngredientDefinition('Water', '1 tsp '),
          IngredientDefinition('Lime peel', 'Twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/otn2011504820649.jpg',
      ),
      Cocktail(
        id: '14978',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.punchBowl,
        instruction: '''
                      Mix all ingredients in a punch bowl and serve.
                    ''',
        isFavourite: true,
        name: 'Rum Punch',
        ingredients: [
          IngredientDefinition('Rum', 'mikey bottle '),
          IngredientDefinition('Ginger ale', 'large bottle '),
          IngredientDefinition('Fruit punch', '355 ml frozen '),
          IngredientDefinition('Orange juice', '355 ml frozen '),
          IngredientDefinition('Ice', 'crushed '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wyrsxu1441554538.jpg',
      ),
      Cocktail(
        id: '16250',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Mix all ingredients in glass & add ice.
                    ''',
        isFavourite: true,
        name: 'Rum Runner',
        ingredients: [
          IngredientDefinition('Malibu rum', '1 1/2 oz '),
          IngredientDefinition('Blackberry brandy', '1 oz '),
          IngredientDefinition('Orange juice', '3-4 oz '),
          IngredientDefinition('Pineapple juice', '3-4 oz '),
          IngredientDefinition('Cranberry juice', '3-4 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vqws6t1504888857.jpg',
      ),
      Cocktail(
        id: '12091',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour rum into a highball glass over ice cubes. Add orange juice, stir, and serve.
                    ''',
        isFavourite: true,
        name: 'Rum Screwdriver',
        ingredients: [
          IngredientDefinition('Light rum', '1 1/2 oz '),
          IngredientDefinition('Orange juice', '5 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/4c85zq1511782093.jpg',
      ),
      Cocktail(
        id: '12093',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.whiskeySourGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine the rum, lemon juice, and sugar. Shake well. Strain into a sour glass and garnish with the orange slice and the cherry.
                    ''',
        isFavourite: true,
        name: 'Rum Sour',
        ingredients: [
          IngredientDefinition('Light rum', '2 oz '),
          IngredientDefinition('Lemon juice', '1 oz '),
          IngredientDefinition('Sugar', '1/2 tsp superfine '),
          IngredientDefinition('Orange', '1 '),
          IngredientDefinition('Maraschino cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/bylfi21504886323.jpg',
      ),
      Cocktail(
        id: '12097',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Dissolve powdered sugar in water in an old-fashioned glass. Add rum and one ice cube and stir. Add the twist of lemon peel and serve.
                    ''',
        isFavourite: true,
        name: 'Rum Toddy',
        ingredients: [
          IngredientDefinition('Rum', '2 oz light or dark '),
          IngredientDefinition('Powdered sugar', '2 tsp '),
          IngredientDefinition('Lemon peel', '1 twist of '),
          IngredientDefinition('Water', '2 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/athdk71504886286.jpg',
      ),
      Cocktail(
        id: '17214',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour the ingredients into an highball glass, top with Sparkling wine.
                    ''',
        isFavourite: true,
        name: 'Russian Spring Punch',
        ingredients: [
          IngredientDefinition('Vodka', '2.5 cl'),
          IngredientDefinition('Creme de Cassis', '1.5 cl'),
          IngredientDefinition('Sugar Syrup', '1 cl'),
          IngredientDefinition('Lemon Juice', '2.5 cl'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ctt20s1504373488.jpg',
      ),
      Cocktail(
        id: '12101',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Pour the Scotch and Drambuie into an old-fashioned glass almost filled with ice cubes. Stir well. Garnish with the lemon twist.
                    ''',
        isFavourite: true,
        name: 'Rusty Nail',
        ingredients: [
          IngredientDefinition('Scotch', '1 1/2 oz '),
          IngredientDefinition('Drambuie', '1/2 oz '),
          IngredientDefinition('Lemon peel', '1 twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yqsvtw1478252982.jpg',
      ),
      Cocktail(
        id: '17233',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Add ice, toffee gin, chocolate liqueur and Amaretto to a cocktail shaker and shake vigorously.
Pour the chocolate syrup into a saucer and dip the top of a martini glass into the sauce. Grate some of the Willie\'s sea salt chocolate into another saucer and dip the coated glass, so the flakes stick to the sauce, creating a chocolate rim!
Pour the contents of the shaker into your chocolatey glass and sprinkle with more grated chocolate - enjoy!
                    ''',
        isFavourite: true,
        name: 'Salted Toffee Martini',
        ingredients: [
          IngredientDefinition('Gin', '50 ml '),
          IngredientDefinition('Chocolate liqueur', '30 ml '),
          IngredientDefinition('Amaretto', '15 ml'),
          IngredientDefinition('Chocolate Sauce', 'Garnish'),
          IngredientDefinition('Salted Chocolate', 'Grated'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/3s6mlr1509551211.jpg',
      ),
      Cocktail(
        id: '12107',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour all ingredients over ice cubes in a highball glass. Stir well and serve. (Vodka may be substituted for gin, if preferred.)
                    ''',
        isFavourite: true,
        name: 'Salty Dog',
        ingredients: [
          IngredientDefinition('Grapefruit juice', '5 oz '),
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Salt', '1/4 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/4vfge01504890216.jpg',
      ),
      Cocktail(
        id: '15184',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Take a tall glass and put in a few ice cubes, fill the vodka over it and fill with juice then the "creme", to end fill in the grenadine but very carefully at the side of the glass so it will lay down in the bottom. garnish with orange and strawberry.
                    ''',
        isFavourite: true,
        name: 'San Francisco',
        ingredients: [
          IngredientDefinition('Vodka', '2 cl '),
          IngredientDefinition('Creme de Banane', '2 cl '),
          IngredientDefinition('Grenadine', 'null'),
          IngredientDefinition('Orange juice', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/szmj2d1504889961.jpg',
      ),
      Cocktail(
        id: '13020',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.pitcher,
        instruction: '''
                      Mix all together in a pitcher and refrigerate. Add cloves and cinnamon sticks to taste. Serve in wine glasses.
                    ''',
        isFavourite: true,
        name: 'Sangria #1',
        ingredients: [
          IngredientDefinition('Red wine', '1 bottle '),
          IngredientDefinition('Sugar', '1/2 cup '),
          IngredientDefinition('Orange juice', '1 cup '),
          IngredientDefinition('Lemon juice', '1 cup '),
          IngredientDefinition('Cloves', 'null'),
          IngredientDefinition('Cinnamon', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xrvxpp1441249280.jpg',
      ),
      Cocktail(
        id: '13026',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.pitcher,
        instruction: '''
                      Mix wine, sugar and fruit, and let sit in the fridge for 18-24 hours. The mixture will have a somewhat syrupy consistency. Before serving stir in brandy and cut the mixture with soda water until it have a thinner, more wine like consistency. Serve from a pitcher in wine glasses.
                    ''',
        isFavourite: true,
        name: 'Sangria - The World\'s Best',
        ingredients: [
          IngredientDefinition('Red wine', '1 1/2 L '),
          IngredientDefinition('Sugar', '1 cup '),
          IngredientDefinition('Lemon', '1 large '),
          IngredientDefinition('Orange', '1 large '),
          IngredientDefinition('Apple', '1 large '),
          IngredientDefinition('Brandy', '3-4 oz plain '),
          IngredientDefinition('Soda water', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vysywu1468924264.jpg',
      ),
      Cocktail(
        id: '12127',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Rinse a chilled old-fashioned glass with the absinthe, add crushed ice, and set it aside. Stir the remaining ingredients over ice and set it aside. Discard the ice and any excess absinthe from the prepared glass, and strain the drink into the glass. Add the lemon peel for garnish.
                    ''',
        isFavourite: true,
        name: 'Sazerac',
        ingredients: [
          IngredientDefinition('Ricard', '1 tsp '),
          IngredientDefinition('Sugar', '1/2 tsp superfine '),
          IngredientDefinition('Peychaud bitters', '2 dashes '),
          IngredientDefinition('Water', '1 tsp '),
          IngredientDefinition('Bourbon', '2 oz '),
          IngredientDefinition('Lemon peel', '1 twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vvpxwy1439907208.jpg',
      ),
      Cocktail(
        id: '12130',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients well with cracked ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Scooter',
        ingredients: [
          IngredientDefinition('Brandy', '1 oz '),
          IngredientDefinition('Amaretto', '1 oz '),
          IngredientDefinition('Light cream', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/twuptu1483388307.jpg',
      ),
      Cocktail(
        id: '12138',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Pour scotch, brandy, and curacao over ice in an old-fashioned glass. Add the orange slice, top with the mint sprig, and serve.
                    ''',
        isFavourite: true,
        name: 'Scotch Cobbler',
        ingredients: [
          IngredientDefinition('Scotch', '2 oz '),
          IngredientDefinition('Brandy', '4 dashes '),
          IngredientDefinition('Curacao', '4 dashes '),
          IngredientDefinition('Orange', '1 slice '),
          IngredientDefinition('Mint', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/1q7coh1504736227.jpg',
      ),
      Cocktail(
        id: '12158',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.whiskeySourGlass,
        instruction: '''
                      Shake scotch, juice of lime, and powdered sugar with ice and strain into a whiskey sour glass. Decorate with 1/2 slice lemon, top with the cherry, and serve.
                    ''',
        isFavourite: true,
        name: 'Scotch Sour',
        ingredients: [
          IngredientDefinition('Scotch', '1 1/2 oz '),
          IngredientDefinition('Lime', 'Juice of 1/2 '),
          IngredientDefinition('Powdered sugar', '1/2 tsp '),
          IngredientDefinition('Lemon', '1/2 slice '),
          IngredientDefinition('Cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/0dnb6k1504890436.jpg',
      ),
      Cocktail(
        id: '12854',
        category: CocktailCategory.homemadeLiqueur,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Combine all ingreds in aging container. Cover tightly and shake gently several times during the first 24 hrs. After 24 hrs, remove the lemon zest. Cover again and let stand in a cool, dark place for 2 weeks, shaking gently every other day. Strain through a wire sieve to remove the angelica root and fennel. Return to aging container, cover and let stand undisturbed in a cool dark place for 6 months. Siphon or pour clear liqueur into a sterile bottle. The cloudy dregs may be saved for cooking.
                    ''',
        isFavourite: true,
        name: 'Scottish Highland Liqueur',
        ingredients: [
          IngredientDefinition('Johnnie Walker', '1 fifth '),
          IngredientDefinition('Honey', '1 1/2 cup mild '),
          IngredientDefinition('Angelica root', '2 tsp dried and chopped '),
          IngredientDefinition('Fennel seeds', '1/4 tsp crushed '),
          IngredientDefinition('Lemon peel', '2 2 inch strips '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/upqvvp1441253441.jpg',
      ),
      Cocktail(
        id: '13625',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Pour first vodka, then Bailey\'s, then Kahlua into a cocktail glass over crushed ice. Stir. Caution: use only high quality vodka. Cheap vodka can cause the Bailey\'s to curdle. Test your brand of vodka by mixing 1 Tsp each of vodka and Bailey\'s first.
                    ''',
        isFavourite: true,
        name: 'Screaming Orgasm',
        ingredients: [
          IngredientDefinition('Vodka', '1 oz '),
          IngredientDefinition('Baileys irish cream', '1 1/2 oz '),
          IngredientDefinition('Kahlua', '1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/x894cs1504388670.jpg',
      ),
      Cocktail(
        id: '12162',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Mix in a highball glass with ice. Garnish and serve.
                    ''',
        isFavourite: true,
        name: 'Screwdriver',
        ingredients: [
          IngredientDefinition('Vodka', '2 oz '),
          IngredientDefinition('Orange juice', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/8xnyke1504352207.jpg',
      ),
      Cocktail(
        id: '13377',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Build all ingredients in a highball glass filled with ice. Garnish with lime wedge.
                    ''',
        isFavourite: true,
        name: 'Sea breeze',
        ingredients: [
          IngredientDefinition('Vodka', '1 1/2 oz '),
          IngredientDefinition('Cranberry juice', '4 oz '),
          IngredientDefinition('Grapefruit juice', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/7rfuks1504371562.jpg',
      ),
      Cocktail(
        id: '12754',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Build all ingredients in a highball glass filled with ice. Garnish with orange slice.
                    ''',
        isFavourite: true,
        name: 'Sex on the Beach',
        ingredients: [
          IngredientDefinition('Vodka', '1 oz '),
          IngredientDefinition('Peach schnapps', '3/4 oz '),
          IngredientDefinition('Cranberry juice', 'null'),
          IngredientDefinition('Grapefruit juice', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/lijtw51551455287.jpg',
      ),
      Cocktail(
        id: '12186',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Shanghai Cocktail',
        ingredients: [
          IngredientDefinition('Light rum', '1 oz Jamaican '),
          IngredientDefinition('Anisette', '1 tsp '),
          IngredientDefinition('Grenadine', '1/2 tsp '),
          IngredientDefinition('Lemon', 'Juice of 1/4 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ttyrxr1478820678.jpg',
      ),
      Cocktail(
        id: '16273',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.pitcher,
        instruction: '''
                      Mix lemonade and water according to instructions on back of can. If the instructions say to add 4 1/3 cans of water do so. Mix into pitcher. Add 1 1/2 cup of Vodka (Absolut). Mix well. Pour into glass of crushed ice. Excellent!
                    ''',
        isFavourite: true,
        name: 'Shark Attack',
        ingredients: [
          IngredientDefinition('Lemonade', '1 can '),
          IngredientDefinition('Water', '3 cans '),
          IngredientDefinition('Vodka', '1 1/2 cup '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uv96zr1504793256.jpg',
      ),
      Cocktail(
        id: '12188',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Shake sherry, powdered sugar, and egg with ice and strain into a collins glass. Fill with milk and stir. Sprinkle nutmeg on top and serve.
                    ''',
        isFavourite: true,
        name: 'Sherry Eggnog',
        ingredients: [
          IngredientDefinition('Sherry', '2 oz cream '),
          IngredientDefinition('Powdered sugar', '1 tsp '),
          IngredientDefinition('Egg', '1 whole '),
          IngredientDefinition('Milk', 'null'),
          IngredientDefinition('Nutmeg', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xwrpsv1478820541.jpg',
      ),
      Cocktail(
        id: '12190',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.nickAndNoraGlass,
        instruction: '''
                      Shake all ingredients (except nutmeg) with ice and strain into a whiskey sour glass. Sprinkle nutmeg on top and serve.
                    ''',
        isFavourite: true,
        name: 'Sherry Flip',
        ingredients: [
          IngredientDefinition('Sherry', '1 1/2 oz cream '),
          IngredientDefinition('Light cream', '2 tsp '),
          IngredientDefinition('Powdered sugar', '1 tsp '),
          IngredientDefinition('Egg', '1 whole '),
          IngredientDefinition('Nutmeg', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qrryvq1478820428.jpg',
      ),
      Cocktail(
        id: '16985',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Pour one part Jack Daneils and one part Jim Beam into shot glass then float Wild Turkey on top.
                    ''',
        isFavourite: true,
        name: 'Shot-gun',
        ingredients: [
          IngredientDefinition('Jim Beam', '1 part '),
          IngredientDefinition('Jack Daniels', '1 part '),
          IngredientDefinition('Wild Turkey', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/2j1m881503563583.jpg',
      ),
      Cocktail(
        id: '12196',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Pour all ingredients into cocktail shaker filled with ice. Shake well and strain into cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Sidecar',
        ingredients: [
          IngredientDefinition('Cognac', '2 oz '),
          IngredientDefinition('Cointreau', '1/2 oz '),
          IngredientDefinition('Lemon juice', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/stwxuq1439906852.jpg',
      ),
      Cocktail(
        id: '12198',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Sidecar Cocktail',
        ingredients: [
          IngredientDefinition('Brandy', '1 oz '),
          IngredientDefinition('Triple sec', '1/2 oz '),
          IngredientDefinition('Lemon', 'Juice of 1/4 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ewjxui1504820428.jpg',
      ),
      Cocktail(
        id: '12214',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.hurricaneGlass,
        instruction: '''
                      Pour all ingredients into cocktail shaker filled with ice cubes. Shake well. Strain into highball glass. Garnish with pineapple and cocktail cherry.
                    ''',
        isFavourite: true,
        name: 'Singapore Sling',
        ingredients: [
          IngredientDefinition('Cherry brandy', '1/2 oz '),
          IngredientDefinition('Grenadine', '1/2 oz '),
          IngredientDefinition('Gin', '1 oz '),
          IngredientDefinition('Sweet and sour', '2 oz '),
          IngredientDefinition('Carbonated water', 'null'),
          IngredientDefinition('Cherry', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/7dozeg1582578095.jpg',
      ),
      Cocktail(
        id: '178306',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Pour the Sambuca into a shot glass, then pour the Irish Cream on top so that the two liquids do not mix.
                    ''',
        isFavourite: true,
        name: 'Slippery Nipple',
        ingredients: [
          IngredientDefinition('Sambuca', '1 part'),
          IngredientDefinition('Irish cream', '1 part'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/l9tgru1551439725.jpg',
      ),
      Cocktail(
        id: '12224',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Sloe Gin Cocktail',
        ingredients: [
          IngredientDefinition('Sloe gin', '2 oz '),
          IngredientDefinition('Dry Vermouth', '1/4 tsp '),
          IngredientDefinition('Orange bitters', '1 dash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/d7mo481504889531.jpg',
      ),
      Cocktail(
        id: '178332',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      In a mason jar muddle the watermelon and 5 mint leaves together into a puree and strain. Next add the grapefruit juice, juice of half a lime and the tequila as well as some ice. Put a lid on the jar and shake. Pour into a glass and add more ice. Garnish with fresh mint and a small slice of watermelon.
                    ''',
        isFavourite: true,
        name: 'Smashed Watermelon Margarita',
        ingredients: [
          IngredientDefinition('Watermelon', 'Garnish with'),
          IngredientDefinition('Mint', 'Garnish with'),
          IngredientDefinition('Grapefruit Juice', '1/3 Cup'),
          IngredientDefinition('Lime', 'Juice of 1/2'),
          IngredientDefinition('Tequila', '1 shot'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/dztcv51598717861.jpg',
      ),
      Cocktail(
        id: '17141',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.beerMug,
        instruction: '''
                      Throw it all together and serve real cold.
                    ''',
        isFavourite: true,
        name: 'Smut',
        ingredients: [
          IngredientDefinition('Red wine', '1/3 part '),
          IngredientDefinition('Peach schnapps', '1 shot '),
          IngredientDefinition('Pepsi Cola', '1/3 part '),
          IngredientDefinition('Orange juice', '1/3 part '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rx8k8e1504365812.jpg',
      ),
      Cocktail(
        id: '13389',
        category: CocktailCategory.beer,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.pintGlass,
        instruction: '''
                      Pour ingredients into a pint glass. Drink. Fall over.
                    ''',
        isFavourite: true,
        name: 'Snake Bite (UK)',
        ingredients: [
          IngredientDefinition('Lager', '1/2 pint '),
          IngredientDefinition('Cider', '1/2 pint sweet or dry '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xuwpyu1441248734.jpg',
      ),
      Cocktail(
        id: '15789',
        category: CocktailCategory.beer,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.pintGlass,
        instruction: '''
                      Put blackcurrant squash in first up to about 1cm in glass. Then add the larger and cider one after another.
                    ''',
        isFavourite: true,
        name: 'Snakebite and Black',
        ingredients: [
          IngredientDefinition('Lager', '1/2 pint '),
          IngredientDefinition('Cider', '1/2 pint '),
          IngredientDefinition('Blackcurrant squash', 'A little bit of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rssvwv1441248863.jpg',
      ),
      Cocktail(
        id: '14195',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Place one ice cube in the glass and add 1 1/2 oz of Advocaat. Fill up the glass with lemonade and decorate with a slice of lemon. Serve at once.
                    ''',
        isFavourite: true,
        name: 'Snowball',
        ingredients: [
          IngredientDefinition('Advocaat', '1 1/2 oz '),
          IngredientDefinition('Lemonade', '8-10 oz cold '),
          IngredientDefinition('Lemon', '1 slice '),
          IngredientDefinition('Ice', 'cubes'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/7ibfs61504735416.jpg',
      ),
      Cocktail(
        id: '12256',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.brandySnifter,
        instruction: '''
                      Shake ingredients with ice, strain into a brandy snifter, and serve. (The English translation of the name of this drink is "Sun and Shade", and after sampling this drink, you'll understand why. Thanks, Kirby.)
                    ''',
        isFavourite: true,
        name: 'Sol Y Sombra',
        ingredients: [
          IngredientDefinition('Brandy', '1 1/2 oz '),
          IngredientDefinition('Anisette', '1 1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/3gz2vw1503425983.jpg',
      ),
      Cocktail(
        id: '15226',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Fill glass with ice and add shots of Bacardi and Malibu. Add splash of pineapple juice and top with orange juice. Add grenadine for color and garnish with cherries.
                    ''',
        isFavourite: true,
        name: 'Space Odyssey',
        ingredients: [
          IngredientDefinition('151 proof rum', '1 shot Bacardi '),
          IngredientDefinition('Malibu rum', '1 shot '),
          IngredientDefinition('Pineapple juice', '1 shot '),
          IngredientDefinition('Orange juice', 'null'),
          IngredientDefinition('Grenadine', 'null'),
          IngredientDefinition('Cherries', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vxtjbx1504817842.jpg',
      ),
      Cocktail(
        id: '178322',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.wineGlass,
        instruction: '''
                      Gently warm 60g golden caster sugar in a pan with 30ml water and 1 tbsp allspice. Cook gently until the sugar has dissolved, then leave the mixture to cool. Strain through a sieve lined with a coffee filter (or a double layer of kitchen paper).

Pour 60ml of the spiced syrup into a cocktail shaker along with 200ml rum and 90ml lime juice. Shake with ice and strain between six flute glasses. Top up with 600ml champagne and garnish each with an orange twist.
                    ''',
        isFavourite: true,
        name: 'Spice 75',
        ingredients: [
          IngredientDefinition('Sugar', '60 ml'),
          IngredientDefinition('Allspice', '1 tblsp'),
          IngredientDefinition('Rum', '20 cl'),
          IngredientDefinition('Lime Juice', '90 ml'),
          IngredientDefinition('Champagne', '6 cl'),
          IngredientDefinition('Orange spiral', 'Garnish with'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/0108c41576797064.jpg',
      ),
      Cocktail(
        id: '17215',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Build into glass over ice, garnish and serve.
                    ''',
        isFavourite: true,
        name: 'Spritz',
        ingredients: [
          IngredientDefinition('Prosecco', '6 cl'),
          IngredientDefinition('Campari', '4 cl'),
          IngredientDefinition('Soda Water', 'splash'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/j9evx11504373665.jpg',
      ),
      Cocktail(
        id: '178308',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.wineGlass,
        instruction: '''
                      Build into glass over ice, garnish and serve.
                    ''',
        isFavourite: true,
        name: 'Spritz Veneziano',
        ingredients: [
          IngredientDefinition('Prosecco', '6 cl'),
          IngredientDefinition('Aperol', '4 cl'),
          IngredientDefinition('Soda Water', 'Top'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/51ezka1551456113.jpg',
      ),
      Cocktail(
        id: '17193',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Pour in a mixing glass with ice, stir and strain into a cocktail glass. May also be served on rocks in a rocks glass.
                    ''',
        isFavourite: true,
        name: 'Stinger',
        ingredients: [
          IngredientDefinition('Brandy', '1 1/2 oz '),
          IngredientDefinition('White Creme de Menthe', '1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/2ahv791504352433.jpg',
      ),
      Cocktail(
        id: '12308',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.whiskeySourGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a chilled whiskey sour glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Stone Sour',
        ingredients: [
          IngredientDefinition('Apricot brandy', '1 oz '),
          IngredientDefinition('Orange juice', '1 oz '),
          IngredientDefinition('Sweet and sour', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vruvtp1472719895.jpg',
      ),
      Cocktail(
        id: '12316',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Pour all ingredients into shaker with ice cubes. Shake well. Strain in chilled cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Strawberry Daiquiri',
        ingredients: [
          IngredientDefinition('Strawberry schnapps', '1/2 oz '),
          IngredientDefinition('Light rum', '1 oz '),
          IngredientDefinition('Lime juice', '1 oz '),
          IngredientDefinition('Powdered sugar', '1 tsp '),
          IngredientDefinition('Strawberries', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/deu59m1504736135.jpg',
      ),
      Cocktail(
        id: '12322',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Rub rim of cocktail glass with lemon juice and dip rim in salt. Shake schnapps, tequila, triple sec, lemon juice, and strawberries with ice, strain into the salt-rimmed glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Strawberry Margarita',
        ingredients: [
          IngredientDefinition('Strawberry schnapps', '1/2 oz '),
          IngredientDefinition('Tequila', '1 oz '),
          IngredientDefinition('Triple sec', '1/2 oz '),
          IngredientDefinition('Lemon juice', '1 oz '),
          IngredientDefinition('Strawberries', '1 oz '),
          IngredientDefinition('Salt', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tqyrpw1439905311.jpg',
      ),
      Cocktail(
        id: '12760',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Lots of ice and soda top up in tall glass with cherry and a grin.
                    ''',
        isFavourite: true,
        name: 'Surf City Lifesaver',
        ingredients: [
          IngredientDefinition('Ouzo', '1 part '),
          IngredientDefinition('Baileys irish cream', '1 part '),
          IngredientDefinition('Gin', '2 parts '),
          IngredientDefinition('Grand Marnier', '1/2 part '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/2rzfer1487602699.jpg',
      ),
      Cocktail(
        id: '15521',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      Pour the coffee in an ordinary coffee cup. Add the aquavit. Add sugar by taste. Stir and have a nice evening (morning)
                    ''',
        isFavourite: true,
        name: 'Swedish Coffee',
        ingredients: [
          IngredientDefinition('Coffee', '1 cup'),
          IngredientDefinition('Aquavit', '4 cl '),
          IngredientDefinition('Sugar', 'By taste '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ywtrvt1441246783.jpg',
      ),
      Cocktail(
        id: '13024',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.pitcher,
        instruction: '''
                      Dissolve the sugar in hot water and cool. Peel the citrus fruits and break into wedges. Mix the wine, sugar syrup, fruit, and Fresca in a pitcher and put in the fridge for a few hours. Serve in tall glasses with a straw.
                    ''',
        isFavourite: true,
        name: 'Sweet Sangria',
        ingredients: [
          IngredientDefinition('Red wine', '2 bottles '),
          IngredientDefinition('Sugar', '1 cup '),
          IngredientDefinition('Water', '2 cups hot '),
          IngredientDefinition('Apple', '1 cup'),
          IngredientDefinition('Orange', ' wedges'),
          IngredientDefinition('Lime', ' wedges'),
          IngredientDefinition('Lemon', 'null'),
          IngredientDefinition('Fresca', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uqqvsp1468924228.jpg',
      ),
      Cocktail(
        id: '16990',
        category: CocktailCategory.milkFloatShake,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Put 2 shots Godiva Liquour into a glass, add as much or as little milk as you would like.
                    ''',
        isFavourite: true,
        name: 'Sweet Tooth',
        ingredients: [
          IngredientDefinition('Godiva liqueur', '2 shots '),
          IngredientDefinition('Milk', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/j6rq6h1503563821.jpg',
      ),
      Cocktail(
        id: '14860',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.brandySnifter,
        instruction: '''
                      Add your GM and then add your coffee.
                    ''',
        isFavourite: true,
        name: 'Talos Coffee',
        ingredients: [
          IngredientDefinition('Grand Marnier', '3 parts '),
          IngredientDefinition('Coffee', '1 part '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rswqpy1441246518.jpg',
      ),
      Cocktail(
        id: '15515',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      Mix Coffee, Jack Daniels and Amaretto. Add Cream on top.
                    ''',
        isFavourite: true,
        name: 'Tennesee Mud',
        ingredients: [
          IngredientDefinition('Coffee', '8 oz '),
          IngredientDefinition('Jack Daniels', '4 oz '),
          IngredientDefinition('Amaretto', '4 oz '),
          IngredientDefinition('Whipped cream', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/txruqv1441245770.jpg',
      ),
      Cocktail(
        id: '12362',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Shake all ingredients (except ginger ale) with ice and strain into a collins glass over ice cubes. Fill with ginger ale, stir, and serve.
                    ''',
        isFavourite: true,
        name: 'Tequila Fizz',
        ingredients: [
          IngredientDefinition('Tequila', '2 oz '),
          IngredientDefinition('Lemon juice', '1 tblsp '),
          IngredientDefinition('Grenadine', '3/4 oz '),
          IngredientDefinition('Egg white', '1 '),
          IngredientDefinition('Ginger ale', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/2bcase1504889637.jpg',
      ),
      Cocktail(
        id: '178307',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.hurricaneGlass,
        instruction: '''
                      Mix carefully to avoid releasing the dissolved CO2.
                    ''',
        isFavourite: true,
        name: 'Tequila Slammer',
        ingredients: [
          IngredientDefinition('Tequila', '1 shot'),
          IngredientDefinition('7-up', '1 part'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/43uhr51551451311.jpg',
      ),
      Cocktail(
        id: '12370',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.whiskeySourGlass,
        instruction: '''
                      Shake tequila, juice of lemon, and powdered sugar with ice and strain into a whiskey sour glass. Add the half-slice of lemon, top with the cherry, and serve.
                    ''',
        isFavourite: true,
        name: 'Tequila Sour',
        ingredients: [
          IngredientDefinition('Tequila', '2 oz '),
          IngredientDefinition('Lemon', '1/2 slice '),
          IngredientDefinition('Powdered sugar', '1 tsp '),
          IngredientDefinition('Cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ek0mlq1504820601.jpg',
      ),
      Cocktail(
        id: '13621',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour the tequila and orange juice into glass over ice. Add the grenadine, which will sink to the bottom. Stir gently to create the sunrise effect. Garnish and serve.
                    ''',
        isFavourite: true,
        name: 'Tequila Sunrise',
        ingredients: [
          IngredientDefinition('Tequila', '2 measures '),
          IngredientDefinition('Orange juice', 'null'),
          IngredientDefinition('Grenadine', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/quqyqp1480879103.jpg',
      ),
      Cocktail(
        id: '14602',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Fill shot glass with Tequila. Add drops of Tobasco sauce.
                    ''',
        isFavourite: true,
        name: 'Tequila Surprise',
        ingredients: [
          IngredientDefinition('Tequila', 'full glass '),
          IngredientDefinition('Tabasco sauce', 'About 8 drops '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/8189p51504735581.jpg',
      ),
      Cocktail(
        id: '15178',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Mix all ingredients and Shake well. Sweet at first, with a BITE at the end...
                    ''',
        isFavourite: true,
        name: 'Texas Rattlesnake',
        ingredients: [
          IngredientDefinition('Yukon Jack', '1 part '),
          IngredientDefinition('Cherry brandy', '1/2 part '),
          IngredientDefinition('Southern Comfort', '1 part '),
          IngredientDefinition('Sweet and sour', '1 splash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rtohqp1504889750.jpg',
      ),
      Cocktail(
        id: '15639',
        category: CocktailCategory.milkFloatShake,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.wineGlass,
        instruction: '''
                      Blend with Ice until smooth. Serve in a tulip glass, top with whip cream.
                    ''',
        isFavourite: true,
        name: 'Texas Sling',
        ingredients: [
          IngredientDefinition('Kahlua', '1/2 oz '),
          IngredientDefinition('Irish cream', '1/2 oz '),
          IngredientDefinition('Amaretto', '1/2 oz '),
          IngredientDefinition('151 proof rum', '1/2 oz Bacardi '),
          IngredientDefinition('Cream', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ypl13s1504890158.jpg',
      ),
      Cocktail(
        id: '16271',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Pour ingredients into glass, and drop in a blue whale! The blue whale isn't really necessary, but it makes the drink more "fun".
                    ''',
        isFavourite: true,
        name: 'The Evil Blue Thing',
        ingredients: [
          IngredientDefinition('Creme de Cacao', '1 1/2 oz '),
          IngredientDefinition('Blue Curacao', '1 oz '),
          IngredientDefinition('Light rum', '1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ojnpz71504793059.jpg',
      ),
      Cocktail(
        id: '17826',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.whiskeySourGlass,
        instruction: '''
                      Fill glass with ice
Pour in The Irishman and Disaronno
Fill to the top with Cranberry Juice
Garnish with a slice of lemon…Enjoy!
                    ''',
        isFavourite: true,
        name: 'The Jimmy Conway',
        ingredients: [
          IngredientDefinition('Irish Whiskey', '50 ml'),
          IngredientDefinition('Amaretto', '50 ml'),
          IngredientDefinition('Cranberry Juice', '4 oz'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wbcvyo1535794478.jpg',
      ),
      Cocktail(
        id: '17247',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake with ice and strain into a cocktail glass.
                    ''',
        isFavourite: true,
        name: 'The Last Word',
        ingredients: [
          IngredientDefinition('Green Chartreuse', '1 oz'),
          IngredientDefinition('Maraschino Liqueur', '1 oz'),
          IngredientDefinition('Lime Juice', '1 oz'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/91oule1513702624.jpg',
      ),
      Cocktail(
        id: '17824',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.balloonGlass,
        instruction: '''
                      1) Squeeze two lime wedges into a balloon glass then add the cordial, Bombay Sapphire and MARTINI Rosso Vermouth, swirl to mix.

2) Fully fill the glass with cubed ice and stir to chill.

3) Top with Fever-Tree Ginger Ale and gently stir again to combine.

4) Garnish with a snapped ginger slice and an awoken mint sprig.
                    ''',
        isFavourite: true,
        name: 'The Laverstoke',
        ingredients: [
          IngredientDefinition('Gin', '50 ml'),
          IngredientDefinition('Elderflower cordial', '15 ml'),
          IngredientDefinition('Rosso Vermouth', '15 ml'),
          IngredientDefinition('Tonic Water', '75 ml'),
          IngredientDefinition('Lime', '2 Wedges'),
          IngredientDefinition('Ginger', '1 Slice'),
          IngredientDefinition('Mint', '1 Large Sprig'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/6xfj5t1517748412.jpg',
      ),
      Cocktail(
        id: '178330',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.margaritaGlass,
        instruction: '''
                      Add all the spirits in a shaker (best to use Hendricks gin) as well as the orange bitters and lemon juice. Strain into a Margarita glass, top with Prosecco.
                    ''',
        isFavourite: true,
        name: 'The Philosopher',
        ingredients: [
          IngredientDefinition('Gin', '1 shot'),
          IngredientDefinition('Melon Liqueur', '1 shot'),
          IngredientDefinition('Orange Bitters', '1 dash'),
          IngredientDefinition('Lemon Juice', '1 dash'),
          IngredientDefinition('Prosecco', 'Top'),
          IngredientDefinition('', ''),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/sp8hkp1596017787.jpg',
      ),
      Cocktail(
        id: '12388',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Thriller',
        ingredients: [
          IngredientDefinition('Scotch', '1 1/2 oz '),
          IngredientDefinition('Wine', '1 oz Green Ginger '),
          IngredientDefinition('Orange juice', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rvuswq1461867714.jpg',
      ),
      Cocktail(
        id: '12856',
        category: CocktailCategory.homemadeLiqueur,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Boil water, sugar and coffe for 10 mins and let cool. Add rum and vanilla. Put in clean bottle(s) and leave for 1 week before using.
                    ''',
        isFavourite: true,
        name: 'Tia-Maria',
        ingredients: [
          IngredientDefinition('Water', '1 cup '),
          IngredientDefinition('Brown sugar', '3/4-1 cup '),
          IngredientDefinition('Coffee', '4 tsp '),
          IngredientDefinition('Rum', '1 cup '),
          IngredientDefinition('Vanilla extract', '4 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/sih81u1504367097.jpg',
      ),
      Cocktail(
        id: '17828',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.nickAndNoraGlass,
        instruction: '''
                      Stir over ice. Strain into chilled glass. Cut a wide swath of orange peel, and express the orange oils over the drink. Discard orange twist.
                    ''',
        isFavourite: true,
        name: 'Tipperary',
        ingredients: [
          IngredientDefinition('Irish Whiskey', '2 oz'),
          IngredientDefinition('Sweet Vermouth', '1 oz'),
          IngredientDefinition('Green Chartreuse', '1/2 oz'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/b522ek1521761610.jpg',
      ),
      Cocktail(
        id: '12402',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      In a shaker half-filled with ice cubes, combine the gin, lemon juice, and sugar. Shake well. Strain into a collins glass alomst filled with ice cubes. Add the club soda. Stir and garnish with the cherry and the orange slice.
                    ''',
        isFavourite: true,
        name: 'Tom Collins',
        ingredients: [
          IngredientDefinition('Gin', '2 oz '),
          IngredientDefinition('Lemon juice', '1 oz '),
          IngredientDefinition('Sugar', '1 tsp superfine '),
          IngredientDefinition('Club soda', '3 oz '),
          IngredientDefinition('Maraschino cherry', '1 '),
          IngredientDefinition('Orange', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qystvv1439907682.jpg',
      ),
      Cocktail(
        id: '17216',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Shake and strain into a chilled cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Tommy\'s Margarita',
        ingredients: [
          IngredientDefinition('Tequila', '4.5 cl'),
          IngredientDefinition('Lime Juice', '1.5 cl'),
          IngredientDefinition('Agave syrup', '2 spoons'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/loezxn1504373874.jpg',
      ),
      Cocktail(
        id: '12418',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir all ingredients (except orange peel) with ice and strain into a cocktail glass. Add the twist of orange peel and serve.
                    ''',
        isFavourite: true,
        name: 'Turf Cocktail',
        ingredients: [
          IngredientDefinition('Dry Vermouth', '1 oz '),
          IngredientDefinition('Gin', '1 oz '),
          IngredientDefinition('Anis', '1/4 tsp '),
          IngredientDefinition('Bitters', '2 dashes '),
          IngredientDefinition('Orange peel', 'Twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/utypqq1441554367.jpg',
      ),
      Cocktail(
        id: '15006',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.shotGlass,
        instruction: '''
                      Shake with ice and strain into a shot glass.
                    ''',
        isFavourite: true,
        name: 'Turkeyball',
        ingredients: [
          IngredientDefinition('Wild Turkey', '1 oz '),
          IngredientDefinition('Amaretto', '3/4 oz '),
          IngredientDefinition('Pineapple juice', '1 splash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rxurpr1441554292.jpg',
      ),
      Cocktail(
        id: '12420',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir all ingredients with ice and strain into a cocktail glass. Garnish with a cherry and a twist of lemon zest.
                    ''',
        isFavourite: true,
        name: 'Tuxedo Cocktail',
        ingredients: [
          IngredientDefinition('Dry Vermouth', '1 1/2 oz '),
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Maraschino liqueur', '1/4 tsp '),
          IngredientDefinition('Anis', '1/4 tsp '),
          IngredientDefinition('Orange bitters', '2 dashes '),
          IngredientDefinition('Cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/4u0nbl1504352551.jpg',
      ),
      Cocktail(
        id: '12434',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Valencia Cocktail',
        ingredients: [
          IngredientDefinition('Apricot brandy', '1 1/2 oz '),
          IngredientDefinition('Orange juice', '1 tblsp '),
          IngredientDefinition('Orange bitters', '2 dashes '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/9myuc11492975640.jpg',
      ),
      Cocktail(
        id: '17217',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Vampiros may be made in a tall glass or an old fashioned glass. Bartenders may first "rim" the glass with Kosher Salt, which is done by placing a layer of Kosher Salt on a chopping board, moistening the glass' rim with lime juice or water, and then placing the upside down glass rim onto the Kosher Salt, so that the salt sticks to the moistened rim. The second step is to fill half the glass with ice and add one or two shooter glasses full of high quality Tequila. The next stage is to add the flavouring elements. This is done by squeezing a fresh lime into the glass, adding a few grains of salt, adding citrus-flavoured soda pop, until the glass is 4/5 full, and then adding spicy Viuda de Sanchez (or orange juice, lime juice and pico de gallo). The final step is to stir the ingredients so that the flavours are properly blended.
                    ''',
        isFavourite: true,
        name: 'Vampiro',
        ingredients: [
          IngredientDefinition('Tequila', '6 cl'),
          IngredientDefinition('Tomato Juice', '3 cl'),
          IngredientDefinition('Orange Juice', '3 cl'),
          IngredientDefinition('Lime Juice', '1.5 cl'),
          IngredientDefinition('Sugar Syrup', '1 dash'),
          IngredientDefinition('Salt', '1 pinch'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yfhn371504374246.jpg',
      ),
      Cocktail(
        id: '12436',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into an old-fashioned glass over ice cubes, and serve.
                    ''',
        isFavourite: true,
        name: 'Van Vleet',
        ingredients: [
          IngredientDefinition('Light rum', '3 oz '),
          IngredientDefinition('Maple syrup', '1 oz '),
          IngredientDefinition('Lemon juice', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/fgq2bl1492975771.jpg',
      ),
      Cocktail(
        id: '12442',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Stir vermouth and creme de cassis in a highball glass with ice cubes. Fill with carbonated water, stir again, and serve.
                    ''',
        isFavourite: true,
        name: 'Vermouth Cassis',
        ingredients: [
          IngredientDefinition('Dry Vermouth', '1 1/2 oz '),
          IngredientDefinition('Creme de Cassis', '3/4 oz '),
          IngredientDefinition('Carbonated water', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tswpxx1441554674.jpg',
      ),
      Cocktail(
        id: '17218',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake over ice until well chilled, then strain into a deep goblet and garnish with a thin slice of lemon peel.
                    ''',
        isFavourite: true,
        name: 'Vesper',
        ingredients: [
          IngredientDefinition('Gin', '6 cl'),
          IngredientDefinition('Vodka', '1.5 cl'),
          IngredientDefinition('Lillet Blanc', '0.75 cl'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/mtdxpa1504374514.jpg',
      ),
      Cocktail(
        id: '12444',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into an old-fashioned glass over ice cubes, and serve.
                    ''',
        isFavourite: true,
        name: 'Vesuvio',
        ingredients: [
          IngredientDefinition('Light rum', '1 oz '),
          IngredientDefinition('Sweet Vermouth', '1/2 oz '),
          IngredientDefinition('Lemon', 'Juice of 1/2 '),
          IngredientDefinition('Powdered sugar', '1 tsp '),
          IngredientDefinition('Egg white', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/26cq601492976203.jpg',
      ),
      Cocktail(
        id: '12446',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Pour the rum and cherry brandy into an old-fashioned glass almost filled with ice cubes. Stir well.
                    ''',
        isFavourite: true,
        name: 'Veteran',
        ingredients: [
          IngredientDefinition('Dark rum', '2 oz '),
          IngredientDefinition('Cherry brandy', '1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/iwml9t1492976255.jpg',
      ),
      Cocktail(
        id: '12450',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Victor',
        ingredients: [
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Sweet Vermouth', '1/2 oz '),
          IngredientDefinition('Brandy', '1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/voapgc1492976416.jpg',
      ),
      Cocktail(
        id: '12452',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Shake all ingredients (except orange slice) with ice and strain into a collins glass over ice cubes. Add the slice of orange and serve.
                    ''',
        isFavourite: true,
        name: 'Victory Collins',
        ingredients: [
          IngredientDefinition('Vodka', '1 1/2 oz '),
          IngredientDefinition('Lemon juice', '3 oz '),
          IngredientDefinition('Grape juice', '3 oz unsweetened '),
          IngredientDefinition('Powdered sugar', '1 tsp '),
          IngredientDefinition('Orange', '1 slice '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/lx0lvs1492976619.jpg',
      ),
      Cocktail(
        id: '12460',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour vodka into a highball glass over ice cubes. Fill with tonic water, stir, and serve.
                    ''',
        isFavourite: true,
        name: 'Vodka And Tonic',
        ingredients: [
          IngredientDefinition('Vodka', '2 oz '),
          IngredientDefinition('Tonic water', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/lmj2yt1504820500.jpg',
      ),
      Cocktail(
        id: '16967',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.whiteWineGlass,
        instruction: '''
                      Blend all ingredients, save nutmeg. Pour into large white wine glass and sprinkle nutmeg on top.
                    ''',
        isFavourite: true,
        name: 'Vodka Fizz',
        ingredients: [
          IngredientDefinition('Vodka', '2 oz '),
          IngredientDefinition('Half-and-half', '2 oz '),
          IngredientDefinition('Limeade', '2 oz '),
          IngredientDefinition('Ice', 'null'),
          IngredientDefinition('Nutmeg', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xwxyux1441254243.jpg',
      ),
      Cocktail(
        id: '14167',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake the vodka and vermouth together with a number of ice cubes, strain into a cocktail glass, add the olive and serve.
                    ''',
        isFavourite: true,
        name: 'Vodka Martini',
        ingredients: [
          IngredientDefinition('Vodka', '1 1/2 oz '),
          IngredientDefinition('Dry Vermouth', '3/4 oz '),
          IngredientDefinition('Olive', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qyxrqw1439906528.jpg',
      ),
      Cocktail(
        id: '15403',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Mix it as a ordinary drink .
                    ''',
        isFavourite: true,
        name: 'Vodka Russian',
        ingredients: [
          IngredientDefinition('Vodka', '2 oz '),
          IngredientDefinition('Schweppes Russchian', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rpttur1454515129.jpg',
      ),
      Cocktail(
        id: '12474',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Waikiki Beachcomber',
        ingredients: [
          IngredientDefinition('Triple sec', '3/4 oz '),
          IngredientDefinition('Gin', '3/4 oz '),
          IngredientDefinition('Pineapple juice', '1 tblsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ysuqus1441208583.jpg',
      ),
      Cocktail(
        id: '11004',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Shake with ice. Strain into chilled glass, garnish and serve. If served 'On the rocks', strain ingredients into old-fashioned glass filled with ice.
                    ''',
        isFavourite: true,
        name: 'Whiskey Sour',
        ingredients: [
          IngredientDefinition('Blended whiskey', '2 oz '),
          IngredientDefinition('Lemon', '1/2 slice '),
          IngredientDefinition('Powdered sugar', '1/2 tsp '),
          IngredientDefinition('Cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/hbkfsh1589574990.jpg',
      ),
      Cocktail(
        id: '12518',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Pour both of the ingredients into a wine goblet with no ice.
                    ''',
        isFavourite: true,
        name: 'Whisky Mac',
        ingredients: [
          IngredientDefinition('Scotch', '1 1/2 oz '),
          IngredientDefinition('Wine', '1 oz Green Ginger '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yvvwys1461867858.jpg',
      ),
      Cocktail(
        id: '17194',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Add all ingredients into cocktail shaker filled with ice. Shake well and strain into large cocktail glass.
                    ''',
        isFavourite: true,
        name: 'White Lady',
        ingredients: [
          IngredientDefinition('Gin', '4cl'),
          IngredientDefinition('Triple Sec', '3cl'),
          IngredientDefinition('Lemon Juice', '2cl'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/jofsaz1504352991.jpg',
      ),
      Cocktail(
        id: '12528',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Pour vodka and coffee liqueur over ice cubes in an old-fashioned glass. Fill with light cream and serve.
                    ''',
        isFavourite: true,
        name: 'White Russian',
        ingredients: [
          IngredientDefinition('Vodka', '2 oz '),
          IngredientDefinition('Coffee liqueur', '1 oz '),
          IngredientDefinition('Light cream', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vsrupw1472405732.jpg',
      ),
      Cocktail(
        id: '178326',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.pitcher,
        instruction: '''
                      Chop the Lemon, Lime and other fruits into large chunks. Fill the Pitcher with the white wine and mix in the Apple Brandy. Top to taste with soda water.
                    ''',
        isFavourite: true,
        name: 'White Wine Sangria',
        ingredients: [
          IngredientDefinition('Lime', '1'),
          IngredientDefinition('lemon', '1'),
          IngredientDefinition('White Wine', '750 ml'),
          IngredientDefinition('Strawberries', '1 cup'),
          IngredientDefinition('Apple', '1 cup'),
          IngredientDefinition('Apple Brandy', '3 shots'),
          IngredientDefinition('Soda Water', 'Top'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/hnuod91587851576.jpg',
      ),
      Cocktail(
        id: '16158',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.margaritaCoupetteGlass,
        instruction: '''
                      Place all ingredients in a blender and blend until smooth. This makes one drink.
                    ''',
        isFavourite: true,
        name: 'Whitecap Margarita',
        ingredients: [
          IngredientDefinition('Ice', '1 cup '),
          IngredientDefinition('Tequila', '2 oz '),
          IngredientDefinition('Cream of coconut', '1/4 cup '),
          IngredientDefinition('Lime juice', '3 tblsp fresh '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/srpxxp1441209622.jpg',
      ),
      Cocktail(
        id: '13058',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Combine all of the ingredients and pour over a block of ice.
                    ''',
        isFavourite: true,
        name: 'Wine Punch',
        ingredients: [
          IngredientDefinition('Red wine', '1 bottle '),
          IngredientDefinition('Lemon', '2 '),
          IngredientDefinition('Orange juice', '1 cup '),
          IngredientDefinition('Orange', '3 '),
          IngredientDefinition('Pineapple juice', '1 cup '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/txustu1473344310.jpg',
      ),
      Cocktail(
        id: '17219',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake and strain into a chilled cocktail glass
                    ''',
        isFavourite: true,
        name: 'Yellow Bird',
        ingredients: [
          IngredientDefinition('White Rum', '3 cl'),
          IngredientDefinition('Galliano', '1.5 cl'),
          IngredientDefinition('Triple Sec', '1.5 cl'),
          IngredientDefinition('Lime Juice', '1.5 cl'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/2t9r6w1504374811.jpg',
      ),
      Cocktail(
        id: '15933',
        category: CocktailCategory.softDrinkSoda,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Mix sambuca with rootbeer and stir. Add ice
                    ''',
        isFavourite: true,
        name: 'Zambeer',
        ingredients: [
          IngredientDefinition('Sambuca', '1 1/2 oz '),
          IngredientDefinition('Root beer', 'Add 10 oz '),
          IngredientDefinition('Ice', 'cubes'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/bje5401485619578.jpg',
      ),
      Cocktail(
        id: '15254',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Mix together and enjoy
                    ''',
        isFavourite: true,
        name: 'Zenmeister',
        ingredients: [
          IngredientDefinition('Jägermeister', '1/2 oz '),
          IngredientDefinition('Root beer', '1/2 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qyuvsu1479209462.jpg',
      ),
      Cocktail(
        id: '14157',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Serve without ice. At least the juice shold have room temperature.
                    ''',
        isFavourite: true,
        name: 'Ziemes Martini Apfelsaft',
        ingredients: [
          IngredientDefinition('Vermouth', '4 cl '),
          IngredientDefinition('Apple juice', '16 cl '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xnzr2p1485619687.jpg',
      ),
      Cocktail(
        id: '17027',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.hurricaneGlass,
        instruction: '''
                      Fill glass with ice. Pour in Chambord, then fill with Zima. Mix and enjoy.
                    ''',
        isFavourite: true,
        name: 'Zima Blaster',
        ingredients: [
          IngredientDefinition('Zima', '12 oz '),
          IngredientDefinition('Chambord raspberry liqueur', '3 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/1wifuv1485619797.jpg',
      ),
      Cocktail(
        id: '15801',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Pour Zima in a collins glass over ice and then pour the shot of Midori. Don't stir. Garnish with a cherry.
                    ''',
        isFavourite: true,
        name: 'Zimadori Zinger',
        ingredients: [
          IngredientDefinition('Midori melon liqueur', '1.5 oz '),
          IngredientDefinition('Zima', '12 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/bw8gzx1485619920.jpg',
      ),
      Cocktail(
        id: '14888',
        category: CocktailCategory.softDrinkSoda,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Get a shot glass and pour in three shots of the schnapps. Do the same with the Surge Cola. Then down it like Scheetz would.
                    ''',
        isFavourite: true,
        name: 'Zinger',
        ingredients: [
          IngredientDefinition('Peachtree schnapps', '4 shots '),
          IngredientDefinition('Surge', '4 shots '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/iixv4l1485620014.jpg',
      ),
      Cocktail(
        id: '16942',
        category: CocktailCategory.shot,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.whiskeySourGlass,
        instruction: '''
                      Fill glass with rocks, add straw before putting in liquor. Then add the ingredients in order, trying to keep layered as much as possible (i.e. Chambord on bottom, then Vodka, Then soda on top).
                    ''',
        isFavourite: true,
        name: 'Zipperhead',
        ingredients: [
          IngredientDefinition('Chambord raspberry liqueur', '1 shot '),
          IngredientDefinition('Vodka', '1 shot '),
          IngredientDefinition('Soda water', 'Fill with '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/r2qzhu1485620235.jpg',
      ),
      Cocktail(
        id: '14065',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Mix Kool-Aid to taste then add Rum and ammaretto. shake well to disolve the sugar in the Kool-Aid... serve cold
                    ''',
        isFavourite: true,
        name: 'Zippy\'s Revenge',
        ingredients: [
          IngredientDefinition('Amaretto', '2 oz '),
          IngredientDefinition('Rum', '2 oz '),
          IngredientDefinition('Kool-Aid', '4 oz Grape '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/1sqm7n1485620312.jpg',
      ),
      Cocktail(
        id: '14594',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.margaritaCoupetteGlass,
        instruction: '''
                      Pour 5cl of Cointreau on ice, add 2cl of fresh lemon (or lime) juice, stir gently, and finally add slices of lemon/lime in glass.
                    ''',
        isFavourite: true,
        name: 'Zizi Coin-coin',
        ingredients: [
          IngredientDefinition('Cointreau', '5 cl '),
          IngredientDefinition('Lemon juice', '2 cl '),
          IngredientDefinition('Ice', 'cubes'),
          IngredientDefinition('Lemon', ' or lime'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/0fbo2t1485620752.jpg',
      ),
      Cocktail(
        id: '15691',
        category: CocktailCategory.softDrinkSoda,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.beerPilsner,
        instruction: '''
                      No specific mixinginstructions, just poor every ingredient in one glass. The lemon goes with it.
                    ''',
        isFavourite: true,
        name: 'Zoksel',
        ingredients: [
          IngredientDefinition('Beer', 'null'),
          IngredientDefinition('Root beer', 'null'),
          IngredientDefinition('Lemonade', 'null'),
          IngredientDefinition('Coca-Cola', ' slice'),
          IngredientDefinition('7-Up', 'null'),
          IngredientDefinition('Creme de Cassis', 'null'),
          IngredientDefinition('Lemon', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ft8ed01485620930.jpg',
      ),
      Cocktail(
        id: '17241',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.hurricaneGlass,
        instruction: '''

Blend at high speed for no more than 5 seconds.

Pour into a glass, add ice cubes to fill, then add the garnish.

*Donn’s mix: Bring 3 crushed cinnamon sticks, 1 cup of sugar and 1 cup of water to a boil, stirring until the sugar is dissolved.

Simmer for 2 minutes, then remove from the heat and let sit for at least 2 hours before straining into a clean glass bottle.

Then add 1 part of the syrup and 2 parts of fresh grapefruit juice together.
                    ''',
        isFavourite: true,
        name: 'Zombie',
        ingredients: [
          IngredientDefinition('Rum', '1 1/2 oz'),
          IngredientDefinition('Gold rum', '1 1/2 oz'),
          IngredientDefinition('151 proof rum', '1 oz'),
          IngredientDefinition('Pernod', '1 tsp'),
          IngredientDefinition('Grenadine', '1 tsp'),
          IngredientDefinition('Lime Juice', '1 tsp'),
          IngredientDefinition('Angostura Bitters', '1 drop'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/2en3jk1509557725.jpg',
      ),
      Cocktail(
        id: '16963',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Prepare like a Martini. Garnish with a green olive.
                    ''',
        isFavourite: true,
        name: 'Zorbatini',
        ingredients: [
          IngredientDefinition('Vodka', '1 1/4 oz Stoli '),
          IngredientDefinition('Ouzo', '1/4 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wtkqgb1485621155.jpg',
      ),
      Cocktail(
        id: '15328',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      add all and pour black coffee and add whipped cream on top.
                    ''',
        isFavourite: true,
        name: 'Zorro',
        ingredients: [
          IngredientDefinition('Sambuca', '2 cl '),
          IngredientDefinition('Baileys irish cream', '2 cl '),
          IngredientDefinition('White Creme de Menthe', '2 cl '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/kvvd4z1485621283.jpg',
      ),
      Cocktail(
        id: '12560',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Mix. Serve over ice.
                    ''',
        isFavourite: true,
        name: 'Afterglow',
        ingredients: [
          IngredientDefinition('Grenadine', '1 part '),
          IngredientDefinition('Orange juice', '4 parts '),
          IngredientDefinition('Pineapple juice', '4 parts '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vuquyv1468876052.jpg',
      ),
      Cocktail(
        id: '12562',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake well, strain into a large cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Alice Cocktail',
        ingredients: [
          IngredientDefinition('Grenadine', '1 cl '),
          IngredientDefinition('Orange juice', '1 cl '),
          IngredientDefinition('Pineapple juice', '2 cl '),
          IngredientDefinition('Cream', '4 cl '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qyqtpv1468876144.jpg',
      ),
      Cocktail(
        id: '12862',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Add 1/4 cup water to ginger root. Boil 3 minutes. Strain. Add the liquid to the guava, lemon and pineapple juices. Make a syrup of sugar and remaining water. Cool. Combine with juices and pineapple. Chill throroughly.
                    ''',
        isFavourite: true,
        name: 'Aloha Fruit punch',
        ingredients: [
          IngredientDefinition('Water', '3/4 cup '),
          IngredientDefinition('Ginger', '2 tsp '),
          IngredientDefinition('Guava juice', '2 cups '),
          IngredientDefinition('Lemon juice', '1 1/2 tblsp '),
          IngredientDefinition('Pineapple', '1 1/2 cup '),
          IngredientDefinition('Sugar', '1 cup '),
          IngredientDefinition('Pineapple juice', '3-4 cups '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wsyvrt1468876267.jpg',
      ),
      Cocktail(
        id: '15106',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.collinsGlass,
        instruction: '''
                      Stirr. Grnish with maraschino cherry.
                    ''',
        isFavourite: true,
        name: 'Apello',
        ingredients: [
          IngredientDefinition('Orange juice', '4 cl '),
          IngredientDefinition('Grapefruit juice', '3 cl '),
          IngredientDefinition('Apple juice', '1 cl '),
          IngredientDefinition('Maraschino cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uptxtv1468876415.jpg',
      ),
      Cocktail(
        id: '12710',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Throw everything into a blender and liquify.
                    ''',
        isFavourite: true,
        name: 'Apple Berry Smoothie',
        ingredients: [
          IngredientDefinition('Berries', '1 cup '),
          IngredientDefinition('Apple', '2 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xwqvur1468876473.jpg',
      ),
      Cocktail(
        id: '12564',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.
                    ''',
        isFavourite: true,
        name: 'Apple Karate',
        ingredients: [
          IngredientDefinition('Apple juice', '2 cups '),
          IngredientDefinition('Carrot', '1 large '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/syusvw1468876634.jpg',
      ),
      Cocktail(
        id: '12708',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Juice cantaloupe, pour juice into blender, add banana, and liquify.
                    ''',
        isFavourite: true,
        name: 'Banana Cantaloupe Smoothie',
        ingredients: [
          IngredientDefinition('Cantaloupe', 'Juice of 1/2 '),
          IngredientDefinition('Banana', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uqxqsy1468876703.jpg',
      ),
      Cocktail(
        id: '12654',
        category: CocktailCategory.milkFloatShake,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.whiteWineGlass,
        instruction: '''
                      Blend very well, preferably in a household mixer. Serve in a wine glass, garnish with whipped cream and a piece of banana.
                    ''',
        isFavourite: true,
        name: 'Banana Milk Shake',
        ingredients: [
          IngredientDefinition('Milk', '10 cl cold '),
          IngredientDefinition('Orange juice', '4 cl '),
          IngredientDefinition('Sugar syrup', '2 tsp '),
          IngredientDefinition('Banana', '1/2 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rtwwsx1472720307.jpg',
      ),
      Cocktail(
        id: '12656',
        category: CocktailCategory.milkFloatShake,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Blend all together in a blender until smooth.
                    ''',
        isFavourite: true,
        name: 'Banana Strawberry Shake',
        ingredients: [
          IngredientDefinition('Strawberries', '1/2 lb frozen '),
          IngredientDefinition('Banana', '1 frozen '),
          IngredientDefinition('Yoghurt', '1 cup plain '),
          IngredientDefinition('Milk', '1 cup '),
          IngredientDefinition('Honey', ' to taste'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vqquwx1472720634.jpg',
      ),
      Cocktail(
        id: '12658',
        category: CocktailCategory.milkFloatShake,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Blend all together in a blender until smooth.
                    ''',
        isFavourite: true,
        name: 'Banana Strawberry Shake Daiquiri-type',
        ingredients: [
          IngredientDefinition('Strawberries', '1/2 lb frozen '),
          IngredientDefinition('Banana', '1 frozen '),
          IngredientDefinition('Apple juice', '2 cups fresh '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uvypss1472720581.jpg',
      ),
      Cocktail(
        id: '12572',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Prepare in a blender or shaker, serve in a highball glass on the rocks. Garnish with 1 slice of pineapple and one cherry.
                    ''',
        isFavourite: true,
        name: 'Bora Bora',
        ingredients: [
          IngredientDefinition('Pineapple juice', '10 cl '),
          IngredientDefinition('Passion fruit juice', '6 cl '),
          IngredientDefinition('Lemon juice', '1 cl '),
          IngredientDefinition('Grenadine', '1 cl '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xwuqvw1473201811.jpg',
      ),
      Cocktail(
        id: '12730',
        category: CocktailCategory.cocoa,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      Shift the cocoa and sugar together into a medium-sized saucepan. Dissolve the cornstarch in the water, and stir into the cocoa and sugar until it is a smooth paste. Begin heating the mixture, stirring it with a whisk, and gradually pour in the milk. Continue stirring with the whisk as you bring the liquid to a simmer. Allow the chocolate to simmer for about 10 minutes, stirring often, until it is thick, glossy and completely smooth. Serve steaming hot in coffee mug. Serves six.
                    ''',
        isFavourite: true,
        name: 'Castillian Hot Chocolate',
        ingredients: [
          IngredientDefinition('Cocoa powder', '1/2 cup '),
          IngredientDefinition('Sugar', '1 cup '),
          IngredientDefinition('Cornstarch', '7 tsp '),
          IngredientDefinition('Water', '1/2 cup '),
          IngredientDefinition('Milk', '1 qt '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/3nbu4a1487603196.jpg',
      ),
      Cocktail(
        id: '12732',
        category: CocktailCategory.cocoa,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      Boil milk in the top of a deep double boiler five minutes. Remove from fire and add chocolate, mixed with the cinnamon, a little at a time, beating with molinillo or egg beater after each addition. When the chocolate is thoroughly blended, heat to the boiling point. Place over bottom of double boiler and add eggs, whipping constantly, until they are thoroughly blended and the mixture is frothing. Serve in coffee mug. Serves eight.
                    ''',
        isFavourite: true,
        name: 'Chocolate Beverage',
        ingredients: [
          IngredientDefinition('Milk', '6 cups '),
          IngredientDefinition('Chocolate', '3 oz Mexican '),
          IngredientDefinition('Cinnamon', '1 tsp powdered '),
          IngredientDefinition('Egg', '3 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/jbqrhv1487603186.jpg',
      ),
      Cocktail(
        id: '12734',
        category: CocktailCategory.cocoa,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      Melt the bar in a small amount of boiling water. Add milk. Cook over low heat, whipping gently (with a whisk, i would assume) until heated well. Don't let it boil! Serve in coffee mug.
                    ''',
        isFavourite: true,
        name: 'Chocolate Drink',
        ingredients: [
          IngredientDefinition('Chocolate', '125 gr'),
          IngredientDefinition('Milk', '3/4 L '),
          IngredientDefinition('Water', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/q7w4xu1487603180.jpg',
      ),
      Cocktail(
        id: '17108',
        category: CocktailCategory.softDrinkSoda,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Take a glass, pour the Coke in the glass, then you take 7 drops of lemon juice. Granish with a lemon slice on the rim of the glass.
                    ''',
        isFavourite: true,
        name: 'Coke and Drops',
        ingredients: [
          IngredientDefinition('Coca-Cola', '1 dl '),
          IngredientDefinition('Lemon juice', '7 drops '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yrtxxp1472719367.jpg',
      ),
      Cocktail(
        id: '12890',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.punchBowl,
        instruction: '''
                      Combine first four ingredients. Stir until sugar is dissolved, chill. Then add ginger ale just before serving. Add ice ring to keep punch cold.
                    ''',
        isFavourite: true,
        name: 'Cranberry Punch',
        ingredients: [
          IngredientDefinition('Cranberry juice', '4 cups '),
          IngredientDefinition('Sugar', '1 1/2 cup '),
          IngredientDefinition('Pineapple juice', '4 cups '),
          IngredientDefinition('Almond flavoring', '1 tblsp '),
          IngredientDefinition('Ginger ale', '2 qt '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/mzgaqu1504389248.jpg',
      ),
      Cocktail(
        id: '12736',
        category: CocktailCategory.cocoa,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      Heat the cream and milk with the cinnamon and vanilla bean very slowly for 15-20 minutes. (If you don't have any beans add 1-2 tsp of vanilla after heating). Remove the bean and cinnamon. Add the chocolate. Mix until fully melted. Serve topped with some very dense fresh whipped cream. Serves 1-2 depending upon how much of a glutton you are. For a richer chocolate, use 4 oz of milk, 4 oz of cream, 4 oz of chocolate. Serve in coffee mug.
                    ''',
        isFavourite: true,
        name: 'Drinking Chocolate',
        ingredients: [
          IngredientDefinition('Heavy cream', '2 oz '),
          IngredientDefinition('Milk', '6-8 oz '),
          IngredientDefinition('Cinnamon', '1 stick '),
          IngredientDefinition('Vanilla', '1 '),
          IngredientDefinition('Chocolate', '2 oz finely chopped dark '),
          IngredientDefinition('Whipped cream', 'Fresh '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/u6jrdf1487603173.jpg',
      ),
      Cocktail(
        id: '12668',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      Mix syrup and milk in a fountain glass. Add soda water, serve with a straw.
                    ''',
        isFavourite: true,
        name: 'Egg Cream',
        ingredients: [
          IngredientDefinition('Chocolate syrup', '2 tblsp '),
          IngredientDefinition('Milk', '6 oz whole '),
          IngredientDefinition('Soda water', '6 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/mvis731484430445.jpg',
      ),
      Cocktail(
        id: '12768',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Mix together. Blend at highest blender speed for about 1 minute. Pour into a glass and drink with a straw. Notes: This works best if everything is cold (if you make fresh coffee, mix it with the milk and let it sit in the fridge for 1/2 hour. If it is not frothy, add more milk, or even just some more milk powder. The froth gradually turns to liquid at the bottom of the glass, so you will find that you can sit and drink this for about 1/2 hour, with more iced coffee continually appearing at the bottom. Very refreshing.
                    ''',
        isFavourite: true,
        name: 'Frappé',
        ingredients: [
          IngredientDefinition('Coffee', '1/2 cup black '),
          IngredientDefinition('Milk', '1/2 cup '),
          IngredientDefinition('Sugar', '1-2 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vqwryq1441245927.jpg',
      ),
      Cocktail(
        id: '12670',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Toss strawberries with sugar, and let sit overnight in refrigerator. Cut lemon, reserve two slices. Juice the rest. Mix together the lemon juice, strawberries, apple juice, and soda water. Add slices of lemon (decor, really). In glasses, put ice cubes, and a slice of apple. Pour drink in, and serve.
                    ''',
        isFavourite: true,
        name: 'Fruit Cooler',
        ingredients: [
          IngredientDefinition('Apple juice', '1 can frozen '),
          IngredientDefinition('Strawberries', '1 cup '),
          IngredientDefinition('Sugar', '2 tblsp '),
          IngredientDefinition('Lemon', '1 '),
          IngredientDefinition('Apple', '1 '),
          IngredientDefinition('Soda water', '1 L '),
          IngredientDefinition('Ice', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/i3tfn31484430499.jpg',
      ),
      Cocktail(
        id: '12672',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.
                    ''',
        isFavourite: true,
        name: 'Fruit Flip-Flop',
        ingredients: [
          IngredientDefinition('Yoghurt', '1 cup '),
          IngredientDefinition('Fruit juice', '1 cup '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/nfdx6p1484430633.jpg',
      ),
      Cocktail(
        id: '12674',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Blend til smooth.
                    ''',
        isFavourite: true,
        name: 'Fruit Shake',
        ingredients: [
          IngredientDefinition('Yoghurt', '1 cup fruit '),
          IngredientDefinition('Banana', '1 '),
          IngredientDefinition('Orange juice', '4 oz frozen '),
          IngredientDefinition('Fruit', '1/2 piece textural '),
          IngredientDefinition('Ice', '6 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/q0fg2m1484430704.jpg',
      ),
      Cocktail(
        id: '12712',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Throw everything into a blender and liquify.
                    ''',
        isFavourite: true,
        name: 'Grape lemon pineapple Smoothie',
        ingredients: [
          IngredientDefinition('Grapes', '1 cup '),
          IngredientDefinition('Lemon', '1/4 '),
          IngredientDefinition('Pineapple', '1/2 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/54z5h71487603583.jpg',
      ),
      Cocktail(
        id: '12954',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.punchBowl,
        instruction: '''
                      Take a bunch of grape juice and a bunch of fizzy stuff (club soda, ginger ale, lemonlime, whatever). Mix them in a punch bowl. Take orange sherbet and lime sherbet. Scoop out scoops and float them in the punch, let them melt a little so that a nasty film spreads all over the top of the punch but there are still "bubbles" in it in the form of sherbet scoops. Looks horrible, tastes just fine.
                    ''',
        isFavourite: true,
        name: 'Holloween Punch',
        ingredients: [
          IngredientDefinition('Grape juice', 'null'),
          IngredientDefinition('Carbonated soft drink', ', orange'),
          IngredientDefinition('Sherbet', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/lfeoe41504888925.jpg',
      ),
      Cocktail(
        id: '12738',
        category: CocktailCategory.cocoa,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      Melt the chocolate, butter and vanilla in a double boiler. When just smooth stir in the cream.
                    ''',
        isFavourite: true,
        name: 'Hot Chocolate to Die for',
        ingredients: [
          IngredientDefinition('Chocolate', '12 oz fine '),
          IngredientDefinition('Butter', '1 tsp '),
          IngredientDefinition('Vanilla extract', '1/2 tsp '),
          IngredientDefinition('Half-and-half', '1 cup '),
          IngredientDefinition('Marshmallows', 'mini '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/0lrmjp1487603166.jpg',
      ),
      Cocktail(
        id: '12770',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      Mix together until coffee and sugar is dissolved. Add milk. Shake well. Using a blender or milk shake maker produces a very foamy drink. Serve in coffee mug.
                    ''',
        isFavourite: true,
        name: 'Iced Coffee',
        ingredients: [
          IngredientDefinition('Coffee', '1/4 cup instant '),
          IngredientDefinition('Sugar', '1/4 cup '),
          IngredientDefinition('Water', '1/4 cup hot '),
          IngredientDefinition('Milk', '4 cups cold '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ytprxy1454513855.jpg',
      ),
      Cocktail(
        id: '17176',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.wineGlass,
        instruction: '''
                      Cut half a lime into pieces, place in a shaker, add the sugar and crush. Measure the passion fruit juice, add it to the shaker and fill up with ice cubes. Close the shaker and shake vigorously. Pour the liquid into a glass, top up with ginger ale, stir with a teaspoon and then garnish the rim of the glass with a slice of lime
                    ''',
        isFavourite: true,
        name: 'Ipamena',
        ingredients: [
          IngredientDefinition('Lime', '½'),
          IngredientDefinition('Brown sugar', '2 tsp'),
          IngredientDefinition('Passion fruit juice', '4 cl'),
          IngredientDefinition('Ginger ale', 'top up with'),
          IngredientDefinition('Ice', 'fill'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yswuwp1469090992.jpg',
      ),
      Cocktail(
        id: '12688',
        category: CocktailCategory.milkFloatShake,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Place all ingredients in the blender jar - cover and whiz on medium speed until well blended. Pour in one tall, 2 medium or 3 small glasses and drink up.
                    ''',
        isFavourite: true,
        name: 'Just a Moonmint',
        ingredients: [
          IngredientDefinition('Milk', '2 cups '),
          IngredientDefinition('Chocolate syrup', 'null'),
          IngredientDefinition('Mint syrup', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/znald61487604035.jpg',
      ),
      Cocktail(
        id: '12720',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Juice ginger and lemon and add it to hot water. You may add cardomom.
                    ''',
        isFavourite: true,
        name: 'Kill the cold Smoothie',
        ingredients: [
          IngredientDefinition('Ginger', '1 inch '),
          IngredientDefinition('Lemon', '1/4 '),
          IngredientDefinition('Water', '1 cup hot '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/7j1z2e1487603414.jpg',
      ),
      Cocktail(
        id: '12714',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Throw everything into a blender and liquify.
                    ''',
        isFavourite: true,
        name: 'Kiwi Papaya Smoothie',
        ingredients: [
          IngredientDefinition('Kiwi', '3 '),
          IngredientDefinition('Papaya', '1/2 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/jogv4w1487603571.jpg',
      ),
      Cocktail(
        id: '12690',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Blend in a blender for 3 seconds. Lassi is one of the easiest things to make, and there are many ways of making it. Basically, it is buttermilk (yoghurt whisked with water), and you can choose almost any consistency that you like, from the thinnest to the thickest. Serve cold.
                    ''',
        isFavourite: true,
        name: 'Lassi - A South Indian Drink',
        ingredients: [
          IngredientDefinition('Yoghurt', '1/2 cup plain '),
          IngredientDefinition('Water', '1 1/4 cup cold '),
          IngredientDefinition('Cumin seed', '1/2 tsp ground roasted '),
          IngredientDefinition('Salt', '1/4 tsp '),
          IngredientDefinition('Mint', '1/4 tsp dried '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/iq6scx1487603980.jpg',
      ),
      Cocktail(
        id: '12698',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Put it all in a blender and pour over crushed ice. You can also use other fruits like strawberries and bananas.
                    ''',
        isFavourite: true,
        name: 'Lassi - Mango',
        ingredients: [
          IngredientDefinition('Mango', '2 '),
          IngredientDefinition('Yoghurt', '2 cups '),
          IngredientDefinition('Sugar', '1/2 cup '),
          IngredientDefinition('Water', '1 cup iced '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/1bw6sd1487603816.jpg',
      ),
      Cocktail(
        id: '12696',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Put all ingredients into a blender and blend until nice and frothy. Serve chilled.
                    ''',
        isFavourite: true,
        name: 'Lassi - Sweet',
        ingredients: [
          IngredientDefinition('Yoghurt', '1 cup '),
          IngredientDefinition('Water', '2 cups cold '),
          IngredientDefinition('Sugar', '4 tblsp '),
          IngredientDefinition('Salt', 'pinch '),
          IngredientDefinition('Lemon juice', '2 tblsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/9jeifz1487603885.jpg',
      ),
      Cocktail(
        id: '12692',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Blend (frappe) in blender until frothy. Add torn curry leaves and serve cold.
                    ''',
        isFavourite: true,
        name: 'Lassi Khara',
        ingredients: [
          IngredientDefinition('Yoghurt', '1 cup '),
          IngredientDefinition('Water', '2 cups cold '),
          IngredientDefinition('Salt', '1 tsp '),
          IngredientDefinition('Asafoetida', '1 pinch '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/m1suzm1487603970.jpg',
      ),
      Cocktail(
        id: '12694',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Blend the yoghurt and ice cubes together, until the yoghurt becomes more liquid. Add sugar to taste. The lemon/lime is optional but it gives it a slightly tart taste. Dash of salt. Raita is also good for the summer. Instead of having a traditional salad you can make raita instead.
                    ''',
        isFavourite: true,
        name: 'Lassi Raita',
        ingredients: [
          IngredientDefinition('Yoghurt', '2 cups '),
          IngredientDefinition('Ice', '4-6 '),
          IngredientDefinition('Sugar', 'null'),
          IngredientDefinition('Lime', 'null'),
          IngredientDefinition('Salt', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/s4x0qj1487603933.jpg',
      ),
      Cocktail(
        id: '12702',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Juice the lemons. Peel and grate the ginger. Place the grated ginger and a liberal dash of the cayenne pepper into a piece of cheesecloth, and tie it into a knot. Let soak in the water. After 15 minutes or so, add the sugar, and the lemon juice. Chill, and serve.
                    ''',
        isFavourite: true,
        name: 'Lemouroudji',
        ingredients: [
          IngredientDefinition('Ginger', '2 pieces '),
          IngredientDefinition('Water', '1 gal '),
          IngredientDefinition('Lemon', '1 lb '),
          IngredientDefinition('Sugar', '1 cup '),
          IngredientDefinition('Cayenne pepper', 'ground '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/eirmo71487603745.jpg',
      ),
      Cocktail(
        id: '12704',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      In a large glass, put the lime juice and sugar, and stir well. Add cold seltzer water to fill. Put the lime peels in the glass. Drink. Repeat until limes or soda run out.
                    ''',
        isFavourite: true,
        name: 'Limeade',
        ingredients: [
          IngredientDefinition('Lime', 'Juice of 1 '),
          IngredientDefinition('Sugar', '1 tblsp '),
          IngredientDefinition('Soda water', ' (seltzer water)'),
          IngredientDefinition('Lime peel', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/5jdp5r1487603680.jpg',
      ),
      Cocktail(
        id: '12716',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Throw everything into a blender and liquify.
                    ''',
        isFavourite: true,
        name: 'Mango Orange Smoothie',
        ingredients: [
          IngredientDefinition('Mango', '1 '),
          IngredientDefinition('Orange', '2 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vdp2do1487603520.jpg',
      ),
      Cocktail(
        id: '12774',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      Bring 2 cups of water to boil. Add all the ingredients and boil again for about 15 seconds. Let stand for a minute. Warm milk in a pot. Filter tea into cups. Add milk and sugar. That\'s IT.
                    ''',
        isFavourite: true,
        name: 'Masala Chai',
        ingredients: [
          IngredientDefinition('Water', '2 cups '),
          IngredientDefinition('Tea', '3-4 tsp '),
          IngredientDefinition('Ginger', '1 chunk dried '),
          IngredientDefinition('Cardamom', '3-4 crushed '),
          IngredientDefinition('Cloves', '3 '),
          IngredientDefinition('Cinnamon', '1 piece '),
          IngredientDefinition('Black pepper', '1-2 whole '),
          IngredientDefinition('Sugar', ' to taste'),
          IngredientDefinition('Milk', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uyrpww1441246384.jpg',
      ),
      Cocktail(
        id: '12776',
        category: CocktailCategory.coffeeTea,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      Brew espresso. In a coffee mug, place 1 teaspoon of unsweetened powdered cocoa, then cover a teaspoon with honey and drizzle it into the cup. Stir while the coffee brews, this is the fun part. The cocoa seems to coat the honey without mixing, so you get a dusty, sticky mass that looks as though it will never mix. Then all at once, presto! It looks like dark chocolate sauce. Pour hot espresso over the honey, stirring to dissolve. Serve with cream.
                    ''',
        isFavourite: true,
        name: 'Melya',
        ingredients: [
          IngredientDefinition('Espresso', 'null'),
          IngredientDefinition('Honey', 'Unsweetened '),
          IngredientDefinition('Cocoa powder', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xwtptq1441247579.jpg',
      ),
      Cocktail(
        id: '12744',
        category: CocktailCategory.cocoa,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      Combine sugar, cocoa, salt and hot water in 1-quart micro-proof measuring cup (or coffee mug). Microwave at HIGH (100%) for 1 to 1 1/2 minutes or until boiling. Add milk, sitr and microwave an additonal 1 1/2 to 2 minutes or until hot. Stir in vanilla, blend well.
                    ''',
        isFavourite: true,
        name: 'Microwave Hot Cocoa',
        ingredients: [
          IngredientDefinition('Sugar', '5 tblsp '),
          IngredientDefinition('Cocoa powder', '3 tblsp '),
          IngredientDefinition('Salt', '1 dash '),
          IngredientDefinition('Water', '3 tblsp hot '),
          IngredientDefinition('Milk', '2 cups '),
          IngredientDefinition('Vanilla extract', '1/4 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/8y4x5f1487603151.jpg',
      ),
      Cocktail(
        id: '12746',
        category: CocktailCategory.cocoa,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      Mix with a bit of milk (1 oz or so) in coffee mug. Nuke mug for about 30-50 seconds. Stir until the heated cocoa dissolves. Fill mug with milk. Nuke for 1-2 minutes, depending on wattage and preferences as to burnt mouth parts.
                    ''',
        isFavourite: true,
        name: 'Nuked Hot Chocolate',
        ingredients: [
          IngredientDefinition('Cocoa powder', '2 tsp '),
          IngredientDefinition('Sugar', '1 tsp '),
          IngredientDefinition('Vanilla extract', '1/2 tsp '),
          IngredientDefinition('Milk', '12 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xcu6nb1487603142.jpg',
      ),
      Cocktail(
        id: '12748',
        category: CocktailCategory.cocoa,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.coffeeMug,
        instruction: '''
                      Combine all ingredients in heavy medium saucepan. Stir over low heat until chocolate melts. Increase heat and bring just to a boil, stirring often. Remove from heat and whisk untily frothy. Return to heat and bring to boil again. Remove from heat, whisk until frothy. Repeat heating and whisking once again. Discard orange peel. (Can be prepared 2 hours ahead. Let stand at room temperature. Before serving, bring just to boil, remove from heat and whisk until frothy.) Pour hot chocolate into coffee mugs. Makes 2 servings.
                    ''',
        isFavourite: true,
        name: 'Orange Scented Hot Chocolate',
        ingredients: [
          IngredientDefinition('Milk', '2 cups '),
          IngredientDefinition('Chocolate', '4 oz chopped bittersweet or semi-sweet '),
          IngredientDefinition('Orange peel', '3 2-inch strips '),
          IngredientDefinition('Espresso', '1/2 tsp instant '),
          IngredientDefinition('Nutmeg', '1/8 tsp ground '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/hdzwrh1487603131.jpg',
      ),
      Cocktail(
        id: '12618',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Place some ice cubes in a large tumbler or highball glass, add lemon juice, orange juice, sugar syrup, and stir well. Top up with cold soda water, serve with a drinking straw.
                    ''',
        isFavourite: true,
        name: 'Orangeade',
        ingredients: [
          IngredientDefinition('Lemon juice', '5 cl '),
          IngredientDefinition('Orange juice', '15 cl '),
          IngredientDefinition('Sugar syrup', '2-3 cl '),
          IngredientDefinition('Soda water', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ytsxxw1441167732.jpg',
      ),
      Cocktail(
        id: '12718',
        category: CocktailCategory.unknown,
        cocktailType: CocktailType.nonAlcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Throw everything into a blender and liquify.
                    ''',
        isFavourite: true,
        name: 'Pineapple Gingerale Smoothie',
        ingredients: [
          IngredientDefinition('Ginger', '1/4 inch '),
          IngredientDefinition('Pineapple', '1/2 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/eg9i1d1487603469.jpg',
      ),
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xsqsxw1441553580.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/stsuqq1441207660.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/pra8vt1487603054.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qxvypq1468924331.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/isql6y1487602375.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/spvvxp1468924425.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/9h1vvt1487603404.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/sxpcj71487603345.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wquwxs1441247025.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rqpypv1441245650.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/trvwpu1441245568.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/869qr81487603278.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/trttrv1441254466.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/xrqxuv1454513218.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tyvpxt1468875212.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wpspsy1468875747.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qxuppv1468875308.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/quxsvt1468875505.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vyxwut1468875960.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vuxwvt1468875418.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/rywtwy1468924758.jpg',
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
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/yutxtv1473344210.jpg',
      ),
    ];
  }

  Iterable<Cocktail> fetchPopularCocktails() {
    return [
      Cocktail(
        id: '11000',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Muddle mint leaves with sugar and lime juice. Add a splash of soda water and fill the glass with cracked ice. Pour the rum and top with soda water. Garnish and serve with straw.
                    ''',
        isFavourite: true,
        name: 'Mojito',
        ingredients: [
          IngredientDefinition('Light rum', '2-3 oz '),
          IngredientDefinition('Lime', 'Juice of 1 '),
          IngredientDefinition('Sugar', '2 tsp '),
          IngredientDefinition('Mint', '2-4 '),
          IngredientDefinition('Soda water', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/3z6xdi1589574603.jpg',
      ),
      Cocktail(
        id: '11001',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Place sugar cube in old fashioned glass and saturate with bitters, add a dash of plain water. Muddle until dissolved.
Fill the glass with ice cubes and add whiskey.

Garnish with orange twist, and a cocktail cherry.
                    ''',
        isFavourite: true,
        name: 'Old Fashioned',
        ingredients: [
          IngredientDefinition('Bourbon', '4.5 cL'),
          IngredientDefinition('Angostura bitters', '2 dashes'),
          IngredientDefinition('Sugar', '1 cube'),
          IngredientDefinition('Water', 'dash'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vrwquq1478252802.jpg',
      ),
      Cocktail(
        id: '11002',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Combine all ingredients (except cola) and pour over ice in a highball glass. Add the splash of cola for color. Decorate with a slice of lemon and serve.
                    ''',
        isFavourite: true,
        name: 'Long Island Tea',
        ingredients: [
          IngredientDefinition('Vodka', '1/2 oz '),
          IngredientDefinition('Light rum', '1/2 oz '),
          IngredientDefinition('Gin', '1/2 oz '),
          IngredientDefinition('Tequila', '1/2 oz '),
          IngredientDefinition('Lemon', 'Juice of 1/2 '),
          IngredientDefinition('Coca-Cola', '1 splash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tppn6i1589574695.jpg',
      ),
      Cocktail(
        id: '11003',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Stir into glass over ice, garnish and serve.
                    ''',
        isFavourite: true,
        name: 'Negroni',
        ingredients: [
          IngredientDefinition('Gin', '1 oz '),
          IngredientDefinition('Campari', '1 oz '),
          IngredientDefinition('Sweet Vermouth', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qgdu971561574065.jpg',
      ),
      Cocktail(
        id: '11004',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''
                      Shake with ice. Strain into chilled glass, garnish and serve. If served 'On the rocks', strain ingredients into old-fashioned glass filled with ice.
                    ''',
        isFavourite: true,
        name: 'Whiskey Sour',
        ingredients: [
          IngredientDefinition('Blended whiskey', '2 oz '),
          IngredientDefinition('Lemon', '1/2 slice '),
          IngredientDefinition('Powdered sugar', '1/2 tsp '),
          IngredientDefinition('Cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/hbkfsh1589574990.jpg',
      ),
      Cocktail(
        id: '11005',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Straight: Pour all ingredients into mixing glass with ice cubes. Stir well. Strain in chilled martini cocktail glass. Squeeze oil from lemon peel onto the drink, or garnish with olive.
                    ''',
        isFavourite: true,
        name: 'Dry Martini',
        ingredients: [
          IngredientDefinition('Gin', '1 2/3 oz '),
          IngredientDefinition('Dry Vermouth', '1/3 oz '),
          IngredientDefinition('Olive', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/6ck9yi1589574317.jpg',
      ),
      Cocktail(
        id: '11006',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Pour all ingredients into shaker with ice cubes. Shake well. Strain in chilled cocktail glass.
                    ''',
        isFavourite: true,
        name: 'Daiquiri',
        ingredients: [
          IngredientDefinition('Light rum', '1 1/2 oz '),
          IngredientDefinition('Lime', 'Juice of 1/2 '),
          IngredientDefinition('Powdered sugar', '1 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/mrz9091589574515.jpg',
      ),
      Cocktail(
        id: '11007',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.
                    ''',
        isFavourite: true,
        name: 'Margarita',
        ingredients: [
          IngredientDefinition('Tequila', '1 1/2 oz '),
          IngredientDefinition('Triple sec', '1/2 oz '),
          IngredientDefinition('Lime juice', '1 oz '),
          IngredientDefinition('Salt', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/5noda61589575158.jpg',
      ),
      Cocktail(
        id: '11008',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stirred over ice, strained into a chilled glass, garnished, and served up.
                    ''',
        isFavourite: true,
        name: 'Manhattan',
        ingredients: [
          IngredientDefinition('Sweet Vermouth', '3/4 oz '),
          IngredientDefinition('Bourbon', '2 1/2 oz Blended '),
          IngredientDefinition('Angostura bitters', 'dash '),
          IngredientDefinition('Ice', '2 or 3 '),
          IngredientDefinition('Maraschino cherry', '1 '),
          IngredientDefinition('Orange peel', '1 twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/hz7p4t1589575281.jpg',
      ),
      Cocktail(
        id: '11009',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.copperMug,
        instruction: '''
                      Combine vodka and ginger beer in a highball glass filled with ice. Add lime juice. Stir gently. Garnish.
                    ''',
        isFavourite: true,
        name: 'Moscow Mule',
        ingredients: [
          IngredientDefinition('Vodka', '2 oz '),
          IngredientDefinition('Lime juice', '2 oz '),
          IngredientDefinition('Ginger ale', '8 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/3pylqc1504370988.jpg',
      ),
      Cocktail(
        id: '11010',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients (except lime wedge) with ice and strain into a cocktail glass. Add the wedge of lime and serve.
                    ''',
        isFavourite: true,
        name: 'After Dinner Cocktail',
        ingredients: [
          IngredientDefinition('Apricot brandy', '1 oz '),
          IngredientDefinition('Triple sec', '1 oz '),
          IngredientDefinition('Lime', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vtytxq1483387578.jpg',
      ),
      Cocktail(
        id: '11011',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'After Supper Cocktail',
        ingredients: [
          IngredientDefinition('Triple sec', '1 oz '),
          IngredientDefinition('Apricot brandy', '1 oz '),
          IngredientDefinition('Lemon juice', '1/2 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/quyxwu1483387610.jpg',
      ),
      Cocktail(
        id: '11012',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction: '''
                      Pour all ingredients (except for lemon juice) over ice in a highball glass. Stir, add a dash of lemon juice, and serve.
                    ''',
        isFavourite: true,
        name: 'Alabama Slammer',
        ingredients: [
          IngredientDefinition('Southern Comfort', '1 oz '),
          IngredientDefinition('Amaretto', '1 oz '),
          IngredientDefinition('Sloe gin', '1/2 oz '),
          IngredientDefinition('Lemon juice', '1 dash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qtwxwr1483387647.jpg',
      ),
      Cocktail(
        id: '11013',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir all ingredients with ice, strain contents into a cocktail glass. Drop in a twist of lemon and serve.
                    ''',
        isFavourite: true,
        name: 'Alaska Cocktail',
        ingredients: [
          IngredientDefinition('Orange bitters', '2 dashes '),
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Yellow Chartreuse', '3/4 oz '),
          IngredientDefinition('Lemon peel', 'Twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wsyryt1483387720.jpg',
      ),
      Cocktail(
        id: '11014',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients with ice and strain contents into a cocktail glass. Sprinkle nutmeg on top and serve.
                    ''',
        isFavourite: true,
        name: 'Alexander',
        ingredients: [
          IngredientDefinition('Gin', '1/2 oz '),
          IngredientDefinition('Creme de Cacao', '1/2 oz white '),
          IngredientDefinition('Light cream', '2 oz '),
          IngredientDefinition('Nutmeg', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/urystu1478253039.jpg',
      ),
      Cocktail(
        id: '11016',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients (except nutmeg) with ice and strain contents into a cocktail glass. Sprinkle nutmeg on top and serve.
                    ''',
        isFavourite: true,
        name: 'Brandy Alexander',
        ingredients: [
          IngredientDefinition('Brandy', '1 oz '),
          IngredientDefinition('Creme de Cacao', '1 oz white '),
          IngredientDefinition('Light cream', '1 oz '),
          IngredientDefinition('Nutmeg', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tvqxvr1483387746.jpg',
      ),
      Cocktail(
        id: '11019',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Combine and shake all ingredients with ice, strain into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Alfie Cocktail',
        ingredients: [
          IngredientDefinition('Lemon vodka', '1 1/2 oz '),
          IngredientDefinition('Triple sec', '1 dash '),
          IngredientDefinition('Pineapple juice', '1 tblsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ypxsqy1483387829.jpg',
      ),
      Cocktail(
        id: '11020',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Combine and shake all ingredients with ice, strain contents into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Algonquin',
        ingredients: [
          IngredientDefinition('Blended whiskey', '1 1/2 oz '),
          IngredientDefinition('Dry Vermouth', '1 oz '),
          IngredientDefinition('Pineapple juice', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uwryxx1483387873.jpg',
      ),
      Cocktail(
        id: '11021',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Shake all ingredients (except lemon peel) with ice and strain into a cocktail glass. Top with the twist of lemon peel and serve.
                    ''',
        isFavourite: true,
        name: 'Allegheny',
        ingredients: [
          IngredientDefinition('Dry Vermouth', '1 oz '),
          IngredientDefinition('Bourbon', '1 oz '),
          IngredientDefinition('Blackberry brandy', '1 1/2 tsp '),
          IngredientDefinition('Lemon juice', '1 1/2 tsp '),
          IngredientDefinition('Lemon peel', '1 twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uwvyts1483387934.jpg',
      ),
      Cocktail(
        id: '11022',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''
                      Stir all ingredients with ice, strain contents into a cocktail glass, and serve.
                    ''',
        isFavourite: true,
        name: 'Allies Cocktail',
        ingredients: [
          IngredientDefinition('Dry Vermouth', '1 oz '),
          IngredientDefinition('Gin', '1 oz '),
          IngredientDefinition('Kummel', '1/2 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qvprvp1483388104.jpg',
      ),
    ];
  }
}
