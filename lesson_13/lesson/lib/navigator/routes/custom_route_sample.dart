import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson/navigator/routes/pages.dart';

class CustomRouteSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RootPage(
      title: 'MaterialPageRoute',
      onTap: () {
        Navigator.of(context)
            .push(CustomRouteBuilder(enterPage: CustomRouteSample()));
      },
    );
  }
}

class CustomRouteBuilder extends PageRouteBuilder {
  final Widget enterPage;
  CustomRouteBuilder({this.enterPage})
      : super(
          transitionDuration: Duration(seconds: 1),
          reverseTransitionDuration: Duration(seconds: 2),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return enterPage;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            if (secondaryAnimation.status != AnimationStatus.dismissed) {
              return FadeTransition(
                opacity: Tween<double>(begin: 1.0, end: 0.3)
                    .animate(secondaryAnimation),
                child: child,
              );
            }
            if (animation.status == AnimationStatus.reverse) {
              print('reverse');
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            }

            return SlideTransition(
              position: Tween(begin: Offset(0, 1), end: Offset(0, 0))
                  .animate(animation),
              child: child,
            );
          },
        );
}
