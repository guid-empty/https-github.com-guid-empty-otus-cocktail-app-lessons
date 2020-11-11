import 'package:json_annotation/json_annotation.dart';

part 'ingredient_dto.g.dart';

///           {
///               "idIngredient": "552",
///               "strIngredient": "Elderflower cordial",
///               "strDescription": "Elderflower cordial is a soft drink made largely from a refined sugar and water solution and uses the flowers of the European elderberry. Historically the cordial has been popular in North Western Europe where it has a strong Victorian heritage.",
///               "strType": "Cordial",
///               "strAlcohol": null,
///               "strABV": null
///           }

@JsonSerializable(createFactory: true, createToJson: false)
class IngredientDto {
  final String idIngredient;
  final String strIngredient;
  final String strDescription;
  final String strType;
  final String strAlcohol;
  final String strABV;

  IngredientDto(this.idIngredient, this.strIngredient, this.strDescription,
      this.strType, this.strAlcohol, this.strABV);

  factory IngredientDto.fromJson(Map<String, dynamic> json) =>
      _$IngredientDtoFromJson(json);
}
