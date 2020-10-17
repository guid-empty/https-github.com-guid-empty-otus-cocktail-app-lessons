import 'package:flutter/material.dart';

class SingleChildScrollViewSample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView'),
      ),
      body: Center(
        child: Scrollbar(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text('Very Long Text...' * 10, maxLines: 1),
          ),
        ),
      ),
    );
  }
}
