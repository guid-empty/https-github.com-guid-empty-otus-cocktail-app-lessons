import 'package:json_annotation/json_annotation.dart';

///
/// curl https://the-cocktail-db.p.rapidapi.com/list.php\?a\=list
///


part 'cocktail_type.g.dart';

@JsonSerializable()
class CocktailType {
  static const CocktailType alcoholic = CocktailType._('alcoholic', 'Alcoholic');
  static const CocktailType nonAlcoholic = CocktailType._('nonAlcoholic', 'Non alcoholic');
  static const CocktailType optionalAlcohol = CocktailType._('optionalAlcohol', 'Optional alcohol');

  static const Iterable<CocktailType> values = [alcoholic, nonAlcoholic, optionalAlcohol];

  final String value;
  final String name;

  const CocktailType._(this.name, this.value);

  CocktailType(this.value, this.name);

  factory CocktailType.fromJson(Map<String, dynamic> json) => CocktailType._(json['name'], json['value']);

  Map<String, dynamic> toJson() => {
    'value':value,
    'name':name,
  };

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is CocktailType && runtimeType == other.runtimeType && value == other.value;

  @override
  String toString() => 'CocktailType{value: $value, name: $name}';


  static CocktailType parse(String raw) =>
      values.firstWhere((element) => element.value.toLowerCase() == raw.toLowerCase(), orElse: () => null);
}
