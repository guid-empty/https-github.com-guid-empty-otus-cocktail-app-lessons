import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NestedNavigationSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: List.generate(
            3,
            (index) => BottomNavigationBarItem(
                icon: Icon(Icons.star), label: 'tab:$index'),
          ),
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: (context) {
              return _Page(1);
            },
          );
        });
  }
}

class _Page extends StatelessWidget {
  final int index;

  const _Page(this.index, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('page:$index'),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return _Page(index + 1);
                  }));
                },
                child: Text('open next')),
            TextButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true)
                      .push(MaterialPageRoute(builder: (context) {
                    return _Page(index + 1);
                  }));
                },
                child: Text('open in root')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) {
                    return route.isFirst;
                  });
                },
                child: Text('go home')),
          ],
        ),
      ),
    );
  }
}
