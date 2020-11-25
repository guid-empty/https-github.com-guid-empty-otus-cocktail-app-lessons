///
/// curl https://the-cocktail-db.p.rapidapi.com/list.php\?g\=list
///
class GlassType {
  static const GlassType highballGlass = GlassType._('highballGlass', 'Highball glass');
  static const GlassType cocktailGlass = GlassType._('cocktailGlass', 'Cocktail glass');
  static const GlassType oldFashionedGlass = GlassType._('oldFashionedGlass', 'Old-fashioned glass');
  static const GlassType collinsGlass = GlassType._('collinsGlass', 'Collins glass');
  static const GlassType pousseCafeGlass = GlassType._('pousseCafeGlass', 'Pousse cafe glass');
  static const GlassType champagneFlute = GlassType._('champagneFlute', 'Champagne flute');
  static const GlassType whiskeySourGlass = GlassType._('whiskeySourGlass', 'Whiskey sour glass');
  static const GlassType cordialGlass = GlassType._('cordialGlass', 'Cordial glass');
  static const GlassType brandySnifter = GlassType._('brandySnifter', 'Brandy snifter');
  static const GlassType whiteWineGlass = GlassType._('whiteWineGlass', 'White wine glass');
  static const GlassType nickAndNoraGlass = GlassType._('nickAndNoraGlass', 'Nick and Nora Glass');
  static const GlassType hurricaneGlass = GlassType._('hurricaneGlass', 'Hurricane glass');
  static const GlassType coffeeMug = GlassType._('coffeeMug', 'Coffee mug');
  static const GlassType shotGlass = GlassType._('shotGlass', 'Shot glass');
  static const GlassType jar = GlassType._('jar', 'Jar');
  static const GlassType irishCoffeeCup = GlassType._('irishCoffeeCup', 'Irish coffee cup');
  static const GlassType punchBowl = GlassType._('punchBowl', 'Punch bowl');
  static const GlassType pitcher = GlassType._('pitcher', 'Pitcher');
  static const GlassType pintGlass = GlassType._('pintGlass', 'Pint glass');
  static const GlassType copperMug = GlassType._('copperMug', 'Copper Mug');
  static const GlassType wineGlass = GlassType._('wineGlass', 'Wine Glass');
  static const GlassType beerMug = GlassType._('beerMug', 'Beer mug');
  static const GlassType margaritaCoupetteGlass = GlassType._('margaritaCoupetteGlass', 'Margarita/Coupette glass');
  static const GlassType beerPilsner = GlassType._('beerPilsner', 'Beer pilsner');
  static const GlassType beerGlass = GlassType._('beerGlass', 'Beer Glass');
  static const GlassType parfaitGlass = GlassType._('parfaitGlass', 'Parfait glass');
  static const GlassType masonJar = GlassType._('masonJar', 'Mason jar');
  static const GlassType margaritaGlass = GlassType._('margaritaGlass', 'Margarita glass');
  static const GlassType martiniGlass = GlassType._('martiniGlass', 'Martini Glass');
  static const GlassType balloonGlass = GlassType._('balloonGlass', 'Balloon Glass');
  static const GlassType coupeGlass = GlassType._('coupeGlass', 'Coupe Glass');
  static const GlassType notSpecified = GlassType._('notSpecified', '');

  static const Iterable<GlassType> values = [
    highballGlass,
    cocktailGlass,
    oldFashionedGlass,
    collinsGlass,
    pousseCafeGlass,
    champagneFlute,
    whiskeySourGlass,
    cordialGlass,
    brandySnifter,
    whiteWineGlass,
    nickAndNoraGlass,
    hurricaneGlass,
    coffeeMug,
    shotGlass,
    jar,
    irishCoffeeCup,
    punchBowl,
    pitcher,
    pintGlass,
    copperMug,
    wineGlass,
    beerMug,
    margaritaCoupetteGlass,
    beerPilsner,
    beerGlass,
    parfaitGlass,
    masonJar,
    margaritaGlass,
    martiniGlass,
    balloonGlass,
    coupeGlass,
    notSpecified,
  ];

  final String value;
  final String name;

  const GlassType._(this.name, this.value);

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is GlassType && runtimeType == other.runtimeType && value == other.value;

  @override
  String toString() => 'GlassType{value: $value, name: $name}';

  static GlassType parse(String raw) =>
      values.firstWhere((element) => element.value.toLowerCase() == raw.toLowerCase(), orElse: () => null);
}
