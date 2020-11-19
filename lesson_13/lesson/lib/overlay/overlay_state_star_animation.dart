import 'package:flutter/material.dart';

class OverlayStateStarSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.star),
            onPressed: () {
              _showOverlayAnimation(context);
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) => ListTile(
          title: Text(' Item $index'),
        ),
      ),
    );
  }

  _showOverlayAnimation(BuildContext context) {
    final overlayState = Overlay.of(context);
    OverlayEntry entry;
    entry = OverlayEntry(
        builder: (context) => StarAnimation(
              onEnd: () {
                entry.remove();
              },
            ));
    overlayState.insert(entry);
  }
}

class StarAnimation extends StatelessWidget {
  final VoidCallback onEnd;

  const StarAnimation({Key key, this.onEnd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
        tween: Tween(begin: 0.0, end: 100.0),
        duration: Duration(seconds: 2),
        child: const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        curve: Curves.bounceIn,
        onEnd: onEnd,
        builder: (context, value, child) {
          return Transform.scale(
            scale: value,
            child: child,
          );
        });
  }
}
