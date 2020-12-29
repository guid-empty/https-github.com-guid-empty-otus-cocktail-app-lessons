import 'package:flutter/material.dart';

class BottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [Text('Title'), Text('Content')],
      ),
    );
  }
}
