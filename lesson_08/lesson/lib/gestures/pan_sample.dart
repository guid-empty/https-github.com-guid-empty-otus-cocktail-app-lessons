import 'package:flutter/material.dart';

class PanSample extends StatelessWidget {
  final _valueNotifier = ValueNotifier<Color>(Colors.red.withOpacity(0.5));

  final _maxDistance = Offset(200, 200).distance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.runtimeType.toString()),
        ),
        body: Center(child: _buildOnHorizontalDragDown(context)));
  }

  Widget _buildOnHorizontalDragDown(BuildContext context) {
    return GestureDetector(
      onTapDown: (d){
        print('onTapDown:${d}');
      },
      onPanStart: (details) {
        print('on Pan Start:${details?.globalPosition}');
      },
      onPanEnd: (details) {
        print('on  Pan End:${details?.velocity}');
      },
      onPanUpdate: (details) {
        print('on Pan Update:${details?.globalPosition}');
        // 0.0 - 1.0
        print('local:${details.localPosition}');
        final distance = details.localPosition.distance;
        final opacity = distance / _maxDistance;

        if (opacity > 1.0) {
          _valueNotifier.value = Colors.red.withOpacity(1.0);
        } else if (opacity < 0.0) {
          _valueNotifier.value = Colors.red.withOpacity(0.0);
        } else {
          _valueNotifier.value = Colors.red.withOpacity(opacity);
        }
        print('distance:${distance}');
      },
      onPanDown: (details) {
        print('on Pan Down:${details?.globalPosition}');
      },
      onPanCancel: () {},
      child: ValueListenableBuilder<Color>(
          valueListenable: _valueNotifier,
          builder: (ctx, value, child) {
            return Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              width: 200,
              height: 200,
              color: value,
              alignment: Alignment.center,
              child: child,
            );
          },
          child: Text(" on Pan")),
    );
  }
}
