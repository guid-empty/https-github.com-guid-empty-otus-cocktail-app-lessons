// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:lesson04async/json/built_value_approach/cocktail.dart';

part 'cocktail_serializers.g.dart';

@SerializersFor(const [
  Cocktail,
])

// By default, `built_value` serialization uses lists and is not compatible
// with other JSON formats. If you'd like to serialize data using a map-based
// JSON approach (which is what you'll find in the json_strings.dart file in
// this project), you can add the StandardJsonPlugin as you see here.
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
