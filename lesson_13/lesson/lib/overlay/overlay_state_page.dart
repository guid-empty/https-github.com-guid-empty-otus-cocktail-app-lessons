import 'package:flutter/material.dart';

class OverlayStatePageSample extends StatelessWidget {
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
      body: Center(
          child: TextButton(
        onPressed: () {
          _showOverlayAnimation(context);
        },
        child: Text('open page 1'),
      )),
    );
  }

  _showOverlayAnimation(BuildContext context) {
    final overlayState = Overlay.of(context);
    OverlayEntry entry;
    entry = OverlayEntry(builder: (context) => _Page2());
    overlayState.insert(entry);
  }
}

class _Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('Page1'),
      ),
    );
  }
}
