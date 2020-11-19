import 'package:flutter/animation.dart';

void main() {
  IntTween tween = IntTween(begin: 0, end: 10);

  final duration = Duration(seconds: 1);
  final step = Duration.millisecondsPerSecond / 60;
  print(duration.inMilliseconds);
  for (var currentTime = 0.0; currentTime < duration.inMilliseconds; currentTime += step) {
    final value = tween.lerp(currentTime / duration.inMilliseconds);
    print('current time is $currentTime, tween is $value');
  }
}
