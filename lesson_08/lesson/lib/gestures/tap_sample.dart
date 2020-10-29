import 'package:flutter/material.dart';

import '../utils.dart';

class GesturesTapSample extends StatelessWidget {
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
              _buildOnTap(),
              SizedBox(height: 16),
              _buildOnTapDown(),
              _buildOnTapUp(),
              _buildOnTapCancel(),
            ]));
  }

  // Обрабатывается сразу же при касании
  Widget _buildOnTapDown() {
    return GestureDetector(
      onTapDown: (details) {
        showSnackBar(
            _key.currentState, 'on Tapped Down:${details?.globalPosition}');
      },
      child: GestureContainer('On Tap Down'),
    );
  }

  // Обрабатывается когда пользователь прекратил касание,
  // При чем в том же месте - если коснуться в одной точке и не отпуская сдвинуть.
  // То обработка не пройдет
  Widget _buildOnTapUp() {
    return GestureDetector(
      onTapUp: (details) {
        showSnackBar(
            _key.currentState, 'on Tapped Up:${details?.globalPosition}');
      },
      child: GestureContainer('On Tap Up'),
    );
  }

  // Обрабатывается только при успешном касании
  // Отработал полный цикл onTapDown -> onTapUp
  Widget _buildOnTap() {
    return GestureDetector(
      onTap: () {
        print('onTap');
        //|showSnackBar(_key.currentState, 'On Tapped');
      },
      child: GestureContainer('On Tap'),
    );
  }

  // Сначала был onTapDown, но потом позиция сместилась
  Widget _buildOnTapCancel() {
    return GestureDetector(
      onTapCancel: () {
        showSnackBar(_key.currentState, 'on Tap Cancel');
      },
      child: GestureContainer('on Tap Cancel'),
    );
  }
}
