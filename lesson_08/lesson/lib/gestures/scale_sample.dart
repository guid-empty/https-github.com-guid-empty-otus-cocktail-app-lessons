import 'package:flutter/material.dart';

class CustomTransform {
  CustomTransform(this.scale, this.rotation);
  final double scale;
  final double rotation;
}

class ScaleSample extends StatelessWidget {
  final _transformNotifier =
      ValueNotifier<CustomTransform>(CustomTransform(1.0, 0.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.runtimeType.toString()),
        ),
        body: _buildOnHorizontalDragDown(context));
  }

  Widget _buildOnHorizontalDragDown(BuildContext context) {
    return GestureDetector(
      onScaleStart: (details) {
        print('onScaleStart:${details}');
      },
      onScaleEnd: (details) {
        print('onScaleEnd:${details}');
      },
      onScaleUpdate: (details) {
        print('onScaleUpdate:${details}');
        if (details.scale != 1.0) {
          _transformNotifier.value =
              CustomTransform(details.scale, details.rotation);
        }
      },
      child: SizedBox.expand(
        child: Container(
          color: Colors.black12,
          alignment: Alignment.center,
          child: ValueListenableBuilder<CustomTransform>(
            valueListenable: _transformNotifier,
            builder: (ctx, transform, child) {
              return Transform(
                alignment: Alignment.center,
                transform: Matrix4.diagonal3Values(
                    transform.scale, transform.scale, 1.0)
                  ..rotateZ(transform.rotation),
                child: child,
              );
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.green,
              alignment: Alignment.center,
              child: Text(" on Scale"),
            ),
          ),
        ),
      ),
    );
  }
}

// Важно понимать где мы считываем
