import 'package:cocktaildbhttpusing/models.dart';
import 'package:cocktaildbhttpusing/src/dto/ingredient_dto.dart';

extension IngredientDtoExtensions on IngredientDto {
  Ingredient toModel() {
    return Ingredient(
      id: this.id,
      name: this.name,
      description: this.description,
      ingredientType: this.ingredientType,
      isAlcoholic: this.isAlcoholic
    );
  }
}