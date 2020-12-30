import 'package:flutter/material.dart';
import '../services/colors.dart';

class SearchWindow extends StatelessWidget {
  final OutlineInputBorder borderDecoration = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(30),
    ),
    borderSide: BorderSide(
      color: kHeaderColor,
      width: 1,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(13, 49, 13, 22),
      padding: EdgeInsets.all(0),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Тип коктейля",
          prefixIcon: Container(
            padding: EdgeInsets.fromLTRB(25, 0, 10, 0),
            child: Icon(
              Icons.search,
              size: 35,
            ),
          ),
          enabledBorder: borderDecoration,
          focusedBorder: borderDecoration,
        ),
      ),
    );
  }
}
