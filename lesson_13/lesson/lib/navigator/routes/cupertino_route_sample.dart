import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson/navigator/routes/pages.dart';

class CupertinoRouteSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RootPage(
      title: 'CupertinoPageRoute',
      onTap: () {
        Navigator.of(context).push(
          CupertinoPageRoute(
            fullscreenDialog: true,
            settings: RouteSettings(),
            builder: (context) {
              return TitlePage();
            },
          ),
        );
      },
    );
  }
}
