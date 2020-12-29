import 'package:flutter/material.dart';

class InkSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Ink(
            child: InkResponse(
                onTap: () {}, radius: 24, child: Icon(Icons.favorite)),
          ),
          Ink(
            color: Colors.red,
            height: 56,
            child: InkWell(
                onTap: () {},
                child: Center(
                  child: Text('InkWell'),
                )),
          )
        ],
      ),
    );
  }
}
