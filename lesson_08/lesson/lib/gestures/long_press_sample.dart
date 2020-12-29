import 'package:flutter/material.dart';

import '../utils.dart';

class GesturesLongPressSample extends StatelessWidget {
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
              _buildOnLongPress(),
              SizedBox(height: 16),
              _buildOnLongPressStart(),
              _buildOnLongPressEnd(),
              _buildOnLongPressUp(),
              _buildOnLongPressMoveUpdate(),
            ]));
  }

  Widget _buildOnLongPress() {
    return GestureDetector(
      onLongPress: () {
        showSnackBar(_key.currentState, 'on Long Press');
      },
      child: GestureContainer('on Long Press'),
    );
  }

  Widget _buildOnLongPressStart() {
    return GestureDetector(
      onLongPressStart: (details) {
        showSnackBar(_key.currentState,
            'on Long Press Start:${details?.globalPosition}');
      },
      child: GestureContainer('on Long Press Start'),
    );
  }

  Widget _buildOnLongPressEnd() {
    return GestureDetector(
      onLongPressEnd: (details) {
        showSnackBar(
            _key.currentState, 'onLongPressEnd:${details?.globalPosition}');
      },
      child: GestureContainer('on Long Press End'),
    );
  }

  Widget _buildOnLongPressUp() {
  
    return GestureDetector(
      onLongPressUp: () {
        showSnackBar(_key.currentState, 'onLongPressUp');
      },
      child: GestureContainer('On Long Press Up'),
    );
  }

  Widget _buildOnLongPressMoveUpdate() {
    return GestureDetector(
      onLongPressMoveUpdate: (details) {
        print('onLongPressMoveUpdate:${details.globalPosition}');
        showSnackBar(_key.currentState,
            'onLongPressMoveUpdate:${details.globalPosition}');
      },
      child: GestureContainer('On Long Press Move Update'),
    );
  }
}
