import 'package:flutter/material.dart';

class GesturesDraft extends StatefulWidget {
  @override
  _GesturesDraftState createState() => _GesturesDraftState();
}

class _GesturesDraftState extends State<GesturesDraft> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: _buildWidget()),
      ),
    );
  }
  
  Widget _buildWidget() {
    return CustomWidget();
  }
}

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(
        'element ${context.hashCode} render: ${context.findRenderObject()?.hashCode}');
    return Text('Button');
  }
}
