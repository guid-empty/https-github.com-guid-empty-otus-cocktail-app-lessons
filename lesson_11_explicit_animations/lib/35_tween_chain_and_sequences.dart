import 'package:flutter/animation.dart';

final controller = null;
final sizeAnimation = TweenSequence(
  [
    TweenSequenceItem(tween: Tween(begin: 0.0, end: 100.0), weight: 1),
    TweenSequenceItem(tween: Tween(begin: 100.0, end: 50.0), weight: 1),
    TweenSequenceItem(tween: Tween(begin: 50.0, end: 75.0), weight: 1),
    TweenSequenceItem(tween: Tween(begin: 75.0, end: 0.0), weight: 1),
  ],
).animate(controller);
