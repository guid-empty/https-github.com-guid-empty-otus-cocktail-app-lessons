import 'package:json_annotation/json_annotation.dart';

part 'cocktail_definition_dto.g.dart';

///
/// "strDrink":"'57 Chevy with a White License Plate"
/// "strDrinkThumb":"https://www.thecocktaildb.com/images/media/drink/qyyvtu1468878544.jpg"
/// "idDrink":"14029"
///
@JsonSerializable(createFactory: true, createToJson: true)
class CocktailDefinitionDto {
  final String strDrink;
  final String strDrinkThumb;
  final String idDrink;
  final String strCategory;

  CocktailDefinitionDto(this.strDrink, this.strDrinkThumb, this.idDrink, this.strCategory);

  factory CocktailDefinitionDto.fromJson(Map<String, dynamic> json) => _$CocktailDefinitionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CocktailDefinitionDtoToJson(this);
}
