import 'package:json_annotation/json_annotation.dart';


///
/// это будет сгенерированный файл
///
part 'cocktail.g.dart';

@JsonSerializable(createToJson: true, createFactory: true)
class Cocktail {

  @JsonKey(name: 'idDrink', nullable: false, required: true)
  final String id;

  @JsonKey(name: 'strDrink', nullable: false, required: true)
  final String drink;

  @JsonKey(name: 'strCategory', nullable: false, required: true)
  final String category;

  @JsonKey(name: 'strAlcoholic', nullable: false, required: true)
  final String alcoholic;

  @JsonKey(name: 'strGlass', nullable: false, required: true)
  final String glass;

  Cocktail(this.id, this.drink, this.category, this.alcoholic, this.glass);

  factory Cocktail.fromJson(Map<String, dynamic> json) => _$CocktailFromJson(json);
}
