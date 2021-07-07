import 'package:json_annotation/json_annotation.dart';
part 'ingredient_dto.g.dart';
///
/// Ingredient Model Definition based on response from
/// curl https://the-cocktail-db.p.rapidapi.com/lookup.php\?iid\=552
/// Current scheme is:
/// ```
///   {
///       "ingredients": [
///           {
///               "idIngredient": "552",
///               "strIngredient": "Elderflower cordial",
///               "strDescription": "Elderflower cordial is a soft drink made largely from a refined sugar and water solution and uses the flowers of the European elderberry. Historically the cordial has been popular in North Western Europe where it has a strong Victorian heritage.",
///               "strType": "Cordial",
///               "strAlcohol": null,
///               "strABV": null
///           }
///       ]
///   }
///  ```
///
///

@JsonSerializable()
class IngredientDto {
  @JsonKey(name: 'idIngredient')
  final String id;
  @JsonKey(name: 'strIngredient')
  final String name;
  @JsonKey(name: 'strDescription')
  final String description;
  @JsonKey(name: 'strType')
  final String ingredientType;
  @JsonKey(name: 'strAlcohol')
  final String isAlcoholic;

  IngredientDto({
    this.id,
    this.name,
    this.description,
    this.ingredientType,
    this.isAlcoholic,
  });

  factory IngredientDto.fromJson(Map<String, dynamic> json) => _$IngredientDtoFromJson(json);
}
