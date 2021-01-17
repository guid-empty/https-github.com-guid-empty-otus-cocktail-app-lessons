///
/// Ingredient definition used to describe Cocktail instruction depending on measurement
///
class IngredientDefinition {
  final String ingredientName;
  final String measure;

  IngredientDefinition(this.ingredientName, this.measure);

  @override
  int get hashCode => (ingredientName + measure).hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IngredientDefinition &&
          runtimeType == other.runtimeType &&
          ingredientName == other.ingredientName &&
          measure == other.measure;

  @override
  String toString() => 'IngredientDefinition{ingredientName: $ingredientName, measure: $measure}';
}
