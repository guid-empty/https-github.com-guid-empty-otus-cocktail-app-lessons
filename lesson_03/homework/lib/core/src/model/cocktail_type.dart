///
/// curl https://the-cocktail-db.p.rapidapi.com/list.php\?a\=list
///
class CocktailType {
  static const CocktailType alcoholic = CocktailType._('alcoholic', 'Alcoholic');
  static const CocktailType nonAlcoholic = CocktailType._('nonAlcoholic', 'Non alcoholic');
  static const CocktailType optionalAlcohol = CocktailType._('optionalAlcohol', 'Optional alcohol');

  static const Iterable<CocktailType> values = [alcoholic, nonAlcoholic, optionalAlcohol];

  final String value;
  final String name;

  const CocktailType._(this.name, this.value);

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is CocktailType && runtimeType == other.runtimeType && value == other.value;

  @override
  String toString() => 'CocktailType{value: $value, name: $name}';

  ///
  /// Show toString() method using in debug session
  ///

  static CocktailType parse(String raw) =>
      values.firstWhere((element) => element.value.toLowerCase() == raw.toLowerCase(), orElse: () => null);
}
