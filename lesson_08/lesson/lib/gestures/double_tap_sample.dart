import 'package:flutter/material.dart';

import '../utils.dart';

class GesturesDoubleTapSample extends StatelessWidget {
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        appBar: AppBar(
          title: Text(this.runtimeType.toString()),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildOnDoubleTapDown(),
              _buildOnTap(),
              _buildOnDoubleTapCancel(),
            ]));
  }

  Widget _buildOnDoubleTapDown() {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onDoubleTapDown: (details) {
        showSnackBar(
            _key.currentState, 'on Double Tap Down:${details?.globalPosition}');
      },
      child: GestureContainer('on Double Tap Down'),
    );
  }

  // Обрабатывается только при успешном касании
  // Отработал полный цикл onTapDown -> onTapUp
  Widget _buildOnTap() {
    return GestureDetector(
      // onTap: () {
      //   //On Tap не будет вызван если отработан On Double Tap
      //   print('on Tap');
      // },
      onDoubleTap: () {
        showSnackBar(_key.currentState, 'on Double Tap');
      },
      child: GestureContainer('on Double Tap'),
    );
  }

  //todo check
  Widget _buildOnDoubleTapCancel() {
    return GestureDetector(
      onDoubleTapCancel: () {
        showSnackBar(_key.currentState, 'on Double Tap Cancel');
      },
      child: GestureContainer('on Double Tap Cancel'),
    );
  }
}
