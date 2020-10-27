import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  SearchField();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        style: TextStyle(
            color: Colors.white,
            fontSize: 13,
            height: 18 / 13,
            fontFamily: "SF Pro Text",
            fontWeight: FontWeight.w500),
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(52, 11, 42, 11),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF464551), width: 1),
                borderRadius: BorderRadius.all(Radius.circular(65))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF464551), width: 1),
                borderRadius: BorderRadius.all(Radius.circular(65))),
            prefixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(20, 11, 10, 11),
              child: Icon(Icons.search, color: Colors.white, size: 20),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(10, 16, 20, 16),
              child: Icon(Icons.close, color: Color(0xFF999999), size: 16),
            )),
      ),
    );
  }
}
