import 'package:flutter/material.dart';

class IsFavorite extends StatelessWidget {
  final bool isFavorite;
  const IsFavorite({
    Key key,
    this.isFavorite,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (isFavorite) {
      return IconButton(
        icon: Icon(Icons.favorite, color: Colors.white),
        onPressed: () {},
      );
    } else {
      return IconButton(
        icon: Icon(Icons.favorite_border, color: Colors.white),
        onPressed: () {},
      );
    }
  }
}
