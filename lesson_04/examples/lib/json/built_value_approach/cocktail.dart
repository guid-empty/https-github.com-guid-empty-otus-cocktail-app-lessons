import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cocktail.g.dart';

///
/// Класс модели абстрактный
///
abstract class Cocktail implements Built<Cocktail, CocktailBuilder> {
  static Serializer<Cocktail> get serializer => _$cocktailSerializer;

  ///
  /// нет полей, только геттеры
  ///
  String get idDrink;
  String get strDrink;
  String get strCategory;
  String get strAlcoholic;
  String get strGlass;



  ///
  /// Конструктор делаем приватным
  ///
  Cocktail._();

  ///
  /// Объявляем внешнюю фабрику для создания объектов
  ///
  factory Cocktail([updates(CocktailBuilder b)]) = _$Cocktail;
}
