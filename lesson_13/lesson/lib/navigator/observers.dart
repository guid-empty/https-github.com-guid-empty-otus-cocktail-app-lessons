import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson/navigator/pages.dart';

class NavigatorObserversSamplePage extends StatelessWidget {
  final globalKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: globalKey,
      observers: [CustomObserver()],
      onGenerateRoute: (settings) {
        print('onGenerateRoute');
        if (settings.name == '/page4') {
          return MaterialPageRoute(builder: (context) {
            return Page2();
          });
        }
        return MaterialPageRoute(builder: (ctx) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () => _openPage1(context),
                      child: Text('Open Page1')),
                  TextButton(
                      onPressed: () => _openPage2(context),
                      child: Text('Open Page2')),
                  TextButton(
                      onPressed: () => _openPage3(context),
                      child: Text('Open Page3')),
                  TextButton(
                      onPressed: () => _openPage4(context),
                      child: Text('Open Page4'))
                ],
              ),
            ),
          );
        });
      },
    );
  }

  _openPage1(BuildContext context) {
    globalKey.currentState.push(MaterialPageRoute(
        settings: RouteSettings(name: 'page1'),
        builder: (ctx) {
          return Page1();
        }));
  }

  _openPage2(BuildContext context) {
    globalKey.currentState.push(CupertinoPageRoute(builder: (ctx) {
      return Page2();
    }));
  }

  _openPage3(BuildContext context) {
    globalKey.currentState.push(
      PageRouteBuilder(pageBuilder: (BuildContext context,
          Animation<double> animation, Animation<double> secondaryAnimation) {
        print('pageBuilder:${animation.value}');
        return Page2();
      }, transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) {
        return ScaleTransition(
          scale: animation,
          child: child,
        );
      }),
    );
  }

  _openPage4(BuildContext context) {
    globalKey.currentState.pushNamed('/page4');
  }
}

class CustomObserver extends NavigatorObserver {
  @override
  void didStopUserGesture() {
    print('didStopUserGesture');
  }

  @override
  void didStartUserGesture(Route<dynamic> route, Route<dynamic> previousRoute) {
    print('didStartUserGesture: $route');
  }

  @override
  void didReplace({Route<dynamic> newRoute, Route<dynamic> oldRoute}) {
    print('didReplace:$newRoute');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic> previousRoute) {
    print('didRemove:$route');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic> previousRoute) {
    print('didPop:$route');
    if (route.settings?.name == 'page1') {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        navigator.push(CupertinoPageRoute(builder: (ctx) {
          return Page2();
        }));
      });
    }
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic> previousRoute) {
    print('didPush:$route');
  }
}
