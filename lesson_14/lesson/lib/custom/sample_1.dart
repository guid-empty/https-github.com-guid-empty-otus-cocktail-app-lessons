import 'dart:ui';

import 'package:flutter/material.dart';

class CustomDialogSample2 extends StatefulWidget {
  @override
  _CustomDialogSample2State createState() => _CustomDialogSample2State();
}

class _CustomDialogSample2State extends State<CustomDialogSample2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomDialog'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: _show,
              child: Text(
                'show general dialog',
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _show() {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Dismiss',
      transitionDuration: Duration(milliseconds: 800),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, -1), end: Offset(0, 0))
              .animate(animation),
          child: child,
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        return AlertDialog(
          title: Text('Title'),
          content: Text('Content'),
        );
      },
    );
  }
}
