import 'package:flutter/material.dart';

class LayoutBuilderSample extends StatefulWidget {
  @override
  _LayoutBuilderSampleState createState() => _LayoutBuilderSampleState();
}

class _LayoutBuilderSampleState extends State<LayoutBuilderSample> {
  bool isHorizontal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutBuilder"),
        actions: [
          IconButton(
              icon: Icon(Icons.crop_rotate),
              onPressed: () {
                setState(() {
                  isHorizontal = !isHorizontal;
                });
              })
        ],
      ),
      body: Center(
        child: Container(
          width: isHorizontal ? 400 : 200,
          height: isHorizontal ? 200 : 400,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.black, width: 3)),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 300) {
                return _buildWideContainers();
              } else {
                return _buildNormalContainer();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildNormalContainer() {
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.red,
      ),
    );
  }

  Widget _buildWideContainers() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}

