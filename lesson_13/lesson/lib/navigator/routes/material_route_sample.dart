import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson/navigator/routes/pages.dart';

class MaterialRouteSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RootPage(
      title: 'MaterialPageRoute',
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            //fullscreenDialog: true,
            builder: (context) {
          return TitlePage();
        }));
      },
    );
  }
}
