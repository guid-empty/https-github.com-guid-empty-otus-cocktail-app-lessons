
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson_16/samples/async_provider.dart';
import 'package:lesson_16/samples/multy_provider.dart';
import 'package:lesson_16/samples/provider.dart';
import 'package:lesson_16/samples/proxy_provider.dart';
import 'package:lesson_16/samples/selector.dart';

import 'app/provider/main.dart';



void main() {
  //buildProviderApp();

  runApp(MaterialApp(
    home: ProxyProviderSample(),
  ));
}



