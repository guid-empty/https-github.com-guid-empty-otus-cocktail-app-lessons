import 'package:cocktail/ui/custom_colors/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
            top: 38.0, left: 10.0, right: 10.0, bottom: 22),
        child: TextField(
          style: Theme.of(context).textTheme.headline2,
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(30),
              ),
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: CustomColors.border_side, width: 1),
                  borderRadius: BorderRadius.circular(30.0)),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search, color: Colors.white),
              ),
              suffixIcon: Icon(
                Icons.clear,
                color: Colors.white,
              )),
        ));
  }
}
