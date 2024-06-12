import 'package:json_annotation/json_annotation.dart';

part 'ingredient_dto.g.dart';

@JsonSerializable(createFactory: true, createToJson: true)
class IngredientDto {
  @JsonKey(name: 'idIngredient', nullable: false, required: true)
  final String id;
  @JsonKey(name: 'strIngredient', nullable: false, required: true)
  final String name;
  @JsonKey(name: 'strDescription', nullable: false, required: true)
  final String description;
  @JsonKey(name: 'strType', nullable: false, required: true)
  final String ingredientType;
  @JsonKey(name: 'strAlcohol', nullable: true, required: false)
  final bool isAlcoholic;

  IngredientDto(this.id, this.name, this.description, this.ingredientType, this.isAlcoholic);

  factory IngredientDto.fromJson(Map<String, dynamic> json) => _$IngredientDtoFromJson(json);
}