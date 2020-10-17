import 'package:flutter/material.dart';

class SliversFlexibleSamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(headerSliverBuilder:
            (BuildContext context, bool innerBoxIsScrolled) {
      return <Widget>[
        SliverOverlapAbsorber(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          sliver: SliverAppBar(
            //title: const Text('NestedScrollView'),
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Title'),
              background: Image.network(
                'https://wallbox.ru/resize/800x480/wallpapers/main/201532/2a6e219479501f5.jpg',
                // height: 1000,
                // fit: BoxFit.fill,
              ),
            ),
            floating: true,
            snap: false,
            pinned: true,
            expandedHeight: 200.0,
            forceElevated: innerBoxIsScrolled,
          ),
        )
      ];
    }, body: Builder(builder: (BuildContext context) {
      return CustomScrollView(
        slivers: <Widget>[
          SliverOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
          SliverFixedExtentList(
            itemExtent: 48.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) =>
                  ListTile(title: Text('Item $index')),
              childCount: 30,
            ),
          ),
        ],
      );
    })));
  }
}
