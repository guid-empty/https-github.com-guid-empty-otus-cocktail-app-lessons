library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:cocktaildbhttpusing/src/homework_04_built_value/ingredient_with_built_value.dart';

part 'serializers.g.dart';

@SerializersFor(const [IngredientWithBuiltValue])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
