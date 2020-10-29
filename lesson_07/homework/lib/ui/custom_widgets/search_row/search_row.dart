import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff1A1927),
      child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            style: TextStyle(color: Colors.white, fontSize: 13),
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(30),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff464551), width: 1),
                    borderRadius: BorderRadius.circular(30.0)),
                prefixIcon: Icon(Icons.search, color: Colors.white),
                suffixIcon: Icon(
                  Icons.clear,
                  color: Colors.white,
                )),
          )),
    );
  }
}
