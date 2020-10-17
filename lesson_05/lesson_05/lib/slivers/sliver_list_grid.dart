import 'package:flutter/material.dart';

import '../builder_delegates.dart';

class SliversListSamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomScrollView'),
      ),
      body: CustomScrollView(
        slivers: [
          // SliverToBoxAdapter(
          //     child: SizedBox(
          //       height: 100,
          //       child: GridView.count(
          //         scrollDirection: Axis.horizontal,
          //         crossAxisCount: 1,
          //         children: cardSliverListDelegate.children,
          //       ),
          //     )),
          // SliverFillRemaining(
          //   fillOverscroll: true,
          //   child: Container(
          //     color: Colors.lightBlue,
          //     child: Center(child: Text('Text')),),
          // ),
          SliverGrid(
            delegate: cardSliverListDelegate,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          ),
          // SliverList(
          //   delegate: cardSliverDelegate,
          // ),
          //SliverFixedExtentList(delegate: cardSliverDelegate, itemExtent: 100.0),
        ],
      ),
    );
  }
}
