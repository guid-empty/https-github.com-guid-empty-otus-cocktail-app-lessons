import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingredient_with_built_value.g.dart';

abstract class IngredientWithBuiltValue implements Built<IngredientWithBuiltValue, IngredientWithBuiltValueBuilder> {
  static Serializer<IngredientWithBuiltValue> get serializer => _$ingredientWithBuiltValueSerializer;

  String get idIngredient;
  @nullable
  String get strIngredient;
  @nullable
  String get strDescription;
  @nullable
  String get strType;
  @nullable
  String get strAlcohol;

  IngredientWithBuiltValue._();

  factory IngredientWithBuiltValue([updates(IngredientWithBuiltValueBuilder b)]) = _$IngredientWithBuiltValue;
}