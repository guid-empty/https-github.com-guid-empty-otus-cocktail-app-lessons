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

import 'package:json_annotation/json_annotation.dart';

part 'ingredient.g.dart';

@JsonSerializable(createFactory: true, createToJson: false)
class Ingredient {
  @JsonKey(required: true, name: "idIngredient")
  final String id;
  @JsonKey(required: true, name: "strIngredient")
  final String name;
  @JsonKey(required: true, name: "strDescription")
  final String description;
  @JsonKey(required: true, name: "strType")
  final String ingredientType;
  @JsonKey(required: true, name: "strAlcohol", defaultValue: false)
  final bool isAlcoholic;

  Ingredient({
    this.id,
    this.name,
    this.description,
    this.ingredientType,
    this.isAlcoholic,
  });

  factory Ingredient.fromJson(Map<String, dynamic> json) => _$IngredientFromJson(json);
}
