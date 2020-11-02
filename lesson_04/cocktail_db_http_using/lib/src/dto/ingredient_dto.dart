import 'package:json_annotation/json_annotation.dart';

// тут будет сгенерированный файл ingredient_dto.g.dart
part 'ingredient_dto.g.dart';

@JsonSerializable(createToJson: false, createFactory: true)
class IngredientDto {
  @JsonKey(name: 'idIngredient', nullable: false, required: true)
  final String id;
  @JsonKey(name: 'strIngredient', nullable: false, required: true)
  final String name;
  @JsonKey(name: 'strDescription', nullable: false, required: true)
  final String description;
  @JsonKey(name: 'strType', nullable: false, required: true)
  final String ingredientType;
  @JsonKey(name: 'strAlcohol', nullable: false, required: true)
  final String isAlcoholic;

  IngredientDto({
    this.id,
    this.name,
    this.description,
    this.ingredientType,
    this.isAlcoholic,
  });

  // _$IngredientDtoFromJson

  factory IngredientDto.fromJson(Map<String, dynamic> json) =>
      _$IngredientDtoFromJson(json);
}
