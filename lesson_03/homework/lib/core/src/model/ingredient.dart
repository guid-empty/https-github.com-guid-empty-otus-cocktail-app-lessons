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
class Ingredient {
  final String id;
  final String name;
  final String description;
  final String ingredientType;
  final bool isAlcoholic;

  Ingredient({
    this.id,
    this.name,
    this.description,
    this.ingredientType,
    this.isAlcoholic,
  });
}
