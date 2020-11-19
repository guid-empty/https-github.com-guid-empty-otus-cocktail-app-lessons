import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

final urls = [
  'https://www.thecocktaildb.com/images/media/drink/rrtssw1472668972.jpg',
  'https://www.thecocktaildb.com/images/media/drink/xtuyqv1472669026.jpg',
  'https://www.thecocktaildb.com/images/media/drink/wwpyvr1461919316.jpg',
  'https://www.thecocktaildb.com/images/media/drink/ywxwqs1461867097.jpg',
  'https://www.thecocktaildb.com/images/media/drink/vqyxqx1472669095.jpg',
  'https://www.thecocktaildb.com/images/media/drink/trptts1454514474.jpg',
  'https://www.thecocktaildb.com/images/media/drink/ssxvww1472669166.jpg',
  'https://www.thecocktaildb.com/images/media/drink/ysqvqp1461867292.jpg',
];

class CupertinoContextMenuSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RootScreen'),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: urls.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
          itemBuilder: (context, index) {
            return CupertinoContextMenu(
              child: Image.network(urls.elementAt(index)),
              previewBuilder: (context, animation, child) {
                return RotationTransition(
                  turns: animation,
                  child: child,
                );
              },
              actions: [
                CupertinoContextMenuAction(
                  child: const Text('Action one'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoContextMenuAction(
                  child: const Text('Action two'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            );
          }),
    );
  }
}
