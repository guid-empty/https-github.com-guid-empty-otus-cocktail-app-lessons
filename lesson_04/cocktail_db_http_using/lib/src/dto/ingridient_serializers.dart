library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:cocktaildbhttpusing/src/dto/ingridient_dto.dart';

part 'ingridient_serializers.g.dart';

@SerializersFor(const [
  IngridientDto,
])

final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();