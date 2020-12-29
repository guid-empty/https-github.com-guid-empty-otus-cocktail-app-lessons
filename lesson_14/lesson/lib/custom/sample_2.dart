import 'dart:ui';

import 'package:flutter/material.dart';

class CustomDialogSample3 extends StatefulWidget {
  @override
  _CustomDialogSample3State createState() => _CustomDialogSample3State();
}

class _CustomDialogSample3State extends State<CustomDialogSample3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomDialog'),
      ),
      body: Column(
        children: [
          SizedBox(
            child: MarkWidget(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Center(child: Text('Child')),
              ),
              marks: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                padding: const EdgeInsets.all(16),
                child: Text('marks'),
              ),
            ),
          ),
          Text('text' * 100)
        ],
      ),
    );
  }
}

class MarkWidget extends StatefulWidget {
  const MarkWidget({Key key, this.marks, @required this.child})
      : super(key: key);

  final Widget child;

  final Widget marks;

  @override
  _MarkWidgetState createState() => _MarkWidgetState();
}

class _MarkWidgetState extends State<MarkWidget> {
  bool offstage = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCustomDialog(context);
      },
      child: Visibility(
          visible: !offstage,
          maintainState: true,
          maintainSize: true,
          maintainAnimation: true,
          child: widget.child),
    );
  }

  void showCustomDialog(BuildContext context) {
    setState(() {
      offstage = true;
    });
    Navigator.of(context)
        .push(CustomDialogRoute2(context, widget.marks))
        .whenComplete(() {
      setState(() {
        offstage = false;
      });
    });
  }
}

class CustomDialogRoute2<T> extends PopupRoute<T> {
  final BuildContext itemContext;

  final Widget messageChild;

  CustomDialogRoute2(this.itemContext, this.messageChild)
      : super(filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1));

  @override
  Color get barrierColor => Colors.black.withOpacity(0.01);

  @override
  bool get barrierDismissible => true;

  @override
  String get barrierLabel => 'close';

  @override
  Duration get transitionDuration => Duration(milliseconds: 300);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    final RenderBox item = itemContext.findRenderObject() as RenderBox;
    final position = item.localToGlobal(Offset.zero);
    return AbsorbPointer(
      absorbing: true,
      child: itemContext.widget,
    );
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    final RenderBox item = itemContext.findRenderObject() as RenderBox;
    final position = item.localToGlobal(Offset.zero);
    final bk = 3.0;
    return DefaultTextStyle(
      style: TextStyle(color: Colors.black),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: position.dy + 100,
            left: position.dx,
            child: FadeTransition(
              opacity: animation,
              child: child,
            ),
          ),
          Positioned(
            top: position.dy + item.size.height + 32,
            left: position.dx,
            child: SlideTransition(
                position: Tween(begin: Offset(0, 1), end: Offset(0, 0))
                    .animate(animation),
                child: messageChild),
          )
        ],
      ),
    );
  }
}
