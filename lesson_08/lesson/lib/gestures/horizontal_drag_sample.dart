import 'package:flutter/material.dart';

import '../utils.dart';

class HorizontalDragSample extends StatefulWidget {

  @override
  _HorizontalDragSampleState createState() => _HorizontalDragSampleState();
}

class _HorizontalDragSampleState extends State<HorizontalDragSample> {
  final _valueNotifier = ValueNotifier<Color>(Colors.red.withOpacity(0));


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text(this.runtimeType.toString()),
        ),
        body: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [RotatedBox(
                quarterTurns: 1,
                child: _buildOnHorizontalDragDown(context))]));
  }

  Widget _buildOnHorizontalDragDown(BuildContext context) {
    return GestureDetector(
      onHorizontalDragDown: (details) {
        print('on Horizontal Drag Down:${details?.globalPosition}');
      },
      onHorizontalDragStart: (details) {
        print('on Horizontal Drag Start:${details?.globalPosition}');
      },
      onHorizontalDragUpdate: (details) {
        print('on Horizontal Drag Update:${details?.globalPosition}');
        // 0.0 - 1.0
        final opacity =
            details.globalPosition.dy / MediaQuery.of(context).size.height;
        _valueNotifier.value = Colors.red.withOpacity(opacity);
      },
      onHorizontalDragEnd: (details) {
        print('on Horizontal Drag End:${details?.velocity}');
      },
      onHorizontalDragCancel: () {
        print('on Horizontal Drag Cancel');
      },
      child: ValueListenableBuilder<Color>(
          valueListenable: _valueNotifier,
          builder: (ctx, value, child) {
            return Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              color: value,
              child: child,
            );
          },
          child: Text("on Horizontal Drag")),
    );
  }
}
