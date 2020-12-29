import 'package:flutter/material.dart';

import 'picker_screen.dart';

class SendDataSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        if (settings.name == '/page2') {
          return MaterialPageRoute<int>(
            settings: settings,
            builder: (ctx) {
              return PickerScreen();
            },
          );
        }
        return null;
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (ctx) {
              return Scaffold(
                appBar: AppBar(),
                body: Center(
                  child: Text('404'),
                ),
              );
            });
      },
      onGenerateInitialRoutes: (state, route) {
        return [
          MaterialPageRoute(builder: (context) {
            return Scaffold(
              appBar: AppBar(),
              body: Center(
                  child: Column(
                children: [
                  TextButton(
                    onPressed: () async {
                      final result = await Navigator.of(context).push(
                        MaterialPageRoute(
                          settings: RouteSettings(
                              arguments: {"title": 'Page 10 Picker'}),
                          builder: (ctx) {
                            return PickerScreen();
                          },
                        ),
                      );

                      if (result != null) {
                        print('result:$result');
                      }
                    },
                    child: Text('Open Page 1'),
                  ),
                  TextButton(
                    onPressed: () async {
                      final result = await Navigator.of(context).pushNamed<int>(
                        '/page2',
                        arguments: {'title': 'Page 2 Picker'},
                      );
                      if (result != null) {
                        print('result:${result}');
                      }
                    },
                    child: Text('Open Page 2'),
                  ),
                ],
              )),
            );
          })
        ];
      },
    );
  }
}
