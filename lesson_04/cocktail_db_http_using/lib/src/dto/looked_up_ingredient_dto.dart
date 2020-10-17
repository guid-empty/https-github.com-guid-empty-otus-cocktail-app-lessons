import 'package:json_annotation/json_annotation.dart';

part 'looked_up_ingredient_dto.g.dart';

@JsonSerializable(createFactory: true, createToJson: false)
class LookedUpIngredientDto {
  @JsonKey(name: 'idIngredient')
  final String id;
  @JsonKey(name: 'strIngredient')
  final String name;
  @JsonKey(name: 'strDescription')
  final String description;
  @JsonKey(name: 'strType')
  final String lookedUpIngredientType;
  @JsonKey(name: 'strAlcohol')
  final String isAlcohol;

  LookedUpIngredientDto({
    this.id,
    this.name,
    this.description,
    this.lookedUpIngredientType,
    this.isAlcohol
  });

  factory LookedUpIngredientDto.fromJson(Map<String, dynamic> json) => _$LookedUpIngredientDtoFromJson(json);
}