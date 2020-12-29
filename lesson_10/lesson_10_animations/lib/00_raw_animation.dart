import 'dart:ui';

import 'package:flutter/painting.dart';
import 'package:vector_math/vector_math_64.dart';
import 'dart:math' as math;

void main() {
  window.onBeginFrame = animateFrame;
  window.scheduleFrame();
}

///
/// See more details on https://fiddle.skia.org/c/@shapes
///
void beginFrame(Duration timeStamp) {
  final double devicePixelRatio = window.devicePixelRatio;
  final Size logicalSize = window.physicalSize / devicePixelRatio;

  final Rect physicalBounds = Offset.zero & (logicalSize * devicePixelRatio);
  final PictureRecorder recorder = PictureRecorder();
  final Canvas canvas = Canvas(recorder, physicalBounds)..scale(devicePixelRatio, devicePixelRatio);

  final paint = Paint()
    ..style = PaintingStyle.fill
    ..isAntiAlias = true
    ..strokeWidth = 4
    ..color = const Color(0xff4285F4);

  Rect rect = Rect.fromLTWH(10, 10, 100, 160);
  canvas.drawRect(rect, paint);

  Rect oval = rect.shift(Offset(40, 80));

  paint.color = Color(0xffDB4437);
  canvas.drawOval(oval, paint);

  paint.color = Color(0xff0F9D58);
  canvas.drawCircle(Offset(180, 50), 25, paint);

  rect = rect.shift(Offset(80, 50));
  paint
    ..color = Color(0xffF4B400)
    ..style = PaintingStyle.stroke;
  canvas.drawRRect(RRect.fromRectXY(rect, 10, 10), paint);

  final Picture picture = recorder.endRecording();

  final SceneBuilder sceneBuilder = SceneBuilder()
    ..pushOffset(250, 250)
    ..pushOpacity(0x50)
    ..addPicture(Offset.zero, picture)
    ..pop()
    ..pushOffset(50, 50)
    ..pushOpacity(0x80)
    ..addPicture(Offset.zero, picture)
    ..pop()
    ..pushOffset(50, 50)
    ..pushOpacity(0xDD)
    ..addPicture(Offset.zero, picture)
    ..pop()
    ..pushOffset(50, 50)
    ..pushOpacity(0xFF)
    ..addPicture(Offset.zero, picture)
    ..pop()
    ..pushOffset(0, 1000)
    ..pushOpacity(0xFF)
    ..pushTransform((Matrix4.identity()
      ..setEntry(3, 2, 0.002)
      ..rotateX(radians(10))
      ..rotateY(radians(10)))
        .storage)
    ..addPicture(Offset.zero, picture)
    ..pop();

  window.render(sceneBuilder.build());
}


///
/// uncomment this
///
void animateFrame(Duration timeStamp) {
  final double devicePixelRatio = window.devicePixelRatio;
  final Size logicalSize = window.physicalSize / devicePixelRatio;

  final Rect physicalBounds = Offset.zero & (logicalSize * devicePixelRatio);
  final PictureRecorder recorder = PictureRecorder();
  final Canvas canvas = Canvas(recorder);

  canvas.drawRect(
    Rect.fromLTRB(0.0, 0.0, physicalBounds.width, physicalBounds.height),
    Paint()..color = const Color.fromARGB(0, 0, 0, 0),
  );

  final paint = Paint()
    ..style = PaintingStyle.stroke
    ..isAntiAlias = true
    ..strokeWidth = 20
    ..color = const Color(0xff4285F4);

  Rect rect = Rect.fromLTRB(-100, -100, 100, 100);
  canvas.drawRect(rect, paint);

  final Picture picture = recorder.endRecording();

  final double t = timeStamp.inMilliseconds / Duration.millisecondsPerSecond;
  final angleToRotate = math.pi * (t % 1.0);

  final yCenter = physicalBounds.height / 2;
  final xCenter = physicalBounds.width / 2;

  final SceneBuilder sceneBuilder = SceneBuilder()
    ..pushOffset(xCenter, yCenter)
    ..pushTransform((Matrix4.identity()..rotateZ(angleToRotate)).storage)
    ..addPicture(Offset.zero, picture);

  window
    ..render(sceneBuilder.build())
    ..scheduleFrame();
}
