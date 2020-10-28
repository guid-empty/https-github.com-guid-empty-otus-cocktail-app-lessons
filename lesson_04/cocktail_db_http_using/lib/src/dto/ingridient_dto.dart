import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingridient_dto.g.dart';

abstract class IngridientDto implements Built<IngridientDto, IngridientDtoBuilder> {

  IngridientDto._();
  factory IngridientDto([updates(IngridientDtoBuilder b)]) = _$IngridientDto;
  static Serializer<IngridientDto> get serializer => _$ingridientDtoSerializer;

  String get idIngredient;

  String get strIngredient;

  String get strDescription;

  String get strType;

  String get strAlcohol;

  @nullable
  String get strABV;

}
