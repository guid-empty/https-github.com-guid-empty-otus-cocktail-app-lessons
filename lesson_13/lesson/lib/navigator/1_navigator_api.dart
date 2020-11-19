import 'package:flutter/material.dart';
import 'package:lesson/navigator/pages.dart';

class NavigatorSamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        if (settings.name == '/page2') {
          return MaterialPageRoute(builder: (context) {
            return Page2();
          });
        }
        return null;
      },
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (_){
          return  Scaffold(
            appBar: AppBar(),
            body: Center(child: Text('404')),
          );
        });
      },
      onGenerateInitialRoutes:
          (NavigatorState navigator, String initialRoute) => [
        MaterialPageRoute(builder: (context) {
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
                ],
              ),
            ),
          );
        })
      ],
    );
  }

  _openPage1(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Page1();
    }));
  }

  _openPage2(BuildContext context) {
    Navigator.of(context).pushNamed('/page3');
  }
}
