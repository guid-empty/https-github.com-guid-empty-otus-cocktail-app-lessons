import 'package:flutter/material.dart';
import 'draft/gestures.dart';
import 'gestures/double_tap_sample.dart';
import 'gestures/horizontal_drag_sample.dart';
import 'gestures/long_press_sample.dart';
import 'gestures/pan_sample.dart';
import 'gestures/raw_gestures.dart';
import 'gestures/scale_sample.dart';
import 'gestures/tap_sample.dart';
import 'gestures/vertical_drag_sample.dart';
import 'input/checkboxes.dart';
import 'input/text_fields.dart';
import 'input/text_form_fields.dart';
import 'input/text_form_fields2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GesturesDraft(),
    );
  }
}
