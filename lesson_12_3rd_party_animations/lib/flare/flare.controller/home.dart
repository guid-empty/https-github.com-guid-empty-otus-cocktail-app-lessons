import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin implements FlareController {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 100,
            child: Container(
              width: 400,
              height: 400,
              child: FlareActor(
                'assets/flare/justtry.progress_indicator.flr',
                shouldClip: true,
                sizeFromArtboard: false,
                fit: BoxFit.contain,
                controller: this,
                isPaused: !mounted,
              ),
            ),
          ),
          Positioned(bottom: 250, child: Text(_currentProgress.toStringAsFixed(2))),
          Positioned(
            bottom: 200,
            child: Slider(
              activeColor: Colors.white,
              min: 0.0,
              max: 1.0,
              label: _currentProgress.toString(),
              onChanged: (current) {
                setState(() {
                  _currentProgress = current;
                  _startProgressAnimation.apply(_startProgressAnimation.duration * _currentProgress, _artBoard, _mix);
                });
              },
              value: _currentProgress,
            ),
          ),
        ],
      ),
    );
  }

  static const String _startProgressAnimationName = 'start_progress';

  ActorAnimation _startProgressAnimation;
  FlutterActorArtboard _artBoard;
  double _currentProgress = 0.1;
  double _mix = 1;

  @override
  ValueNotifier<bool> isActive;

  @override
  bool advance(FlutterActorArtboard artBoard, double elapsed) => true;

  @override
  void initialize(FlutterActorArtboard artBoard) {
    _artBoard = artBoard;
    _startProgressAnimation = artBoard.getAnimation(_startProgressAnimationName);
    _startProgressAnimation.apply(_startProgressAnimation.duration * _currentProgress, _artBoard, _mix);
  }

  @override
  void setViewTransform(Mat2D viewTransform) {}
}
