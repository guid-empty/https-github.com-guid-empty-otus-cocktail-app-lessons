import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

export 'pigeon/multiply.pigeon.dart';

class Lesson20Example {
  static const MethodChannel _channel =
      const MethodChannel('lesson_20_example');

  static const EventChannel _eventChannel =
      const EventChannel('lesson_20_example_event_channel');

  static Stream<String> get stream =>
      _eventChannel.receiveBroadcastStream().cast<String>();

  static Future<int> power2(int value) =>
      _channel.invokeMethod<int>('power2', value);

  static void handleEnterBackground(VoidCallback callback) {
    _channel.setMethodCallHandler((call) async {
      if (call.method == 'enterBackground') {
        callback();
      }
    });
  }
}
