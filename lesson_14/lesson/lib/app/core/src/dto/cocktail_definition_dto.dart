import 'package:json_annotation/json_annotation.dart';

part 'cocktail_definition_dto.g.dart';

///
/// "strDrink":"'57 Chevy with a White License Plate"
/// "strDrinkThumb":"https://www.thecocktaildb.com/images/media/drink/qyyvtu1468878544.jpg"
/// "idDrink":"14029"
///
@JsonSerializable(createFactory: true, createToJson: false)
class CocktailDefinitionDto {
  final String strDrink;
  final String strDrinkThumb;
  final String idDrink;

  CocktailDefinitionDto(this.strDrink, this.strDrinkThumb, this.idDrink);

  factory CocktailDefinitionDto.fromJson(Map<String, dynamic> json) => _$CocktailDefinitionDtoFromJson(json);
}
