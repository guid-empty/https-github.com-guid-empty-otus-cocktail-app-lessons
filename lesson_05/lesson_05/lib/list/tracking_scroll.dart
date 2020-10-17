import 'package:flutter/material.dart';

class TrackingScrollSamplePage extends StatelessWidget {

  final _trackingScrollController = TrackingScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TrackingScrollController'),),
      body: Row(
        children: <Widget>[
          Flexible(
            child: ListView(
              controller: _trackingScrollController,
              children: List<Widget>.generate(100, (int i) => Text('page 0 item $i')).toList(),
            ),
          ),
          Flexible(
            child: ListView(
              controller: _trackingScrollController,
              children: List<Widget>.generate(200, (int i) => Text('page 1 item $i')).toList(),
            ),
          ),
          Flexible(
            child: ListView(
              controller: _trackingScrollController,
              children: List<Widget>.generate(300, (int i) => Text('page 2 item $i')).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

