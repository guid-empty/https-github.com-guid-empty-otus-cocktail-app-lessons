import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/ui/style/colors.dart';

class ImageWithBackAndShareButtons extends StatelessWidget {
  final String imageUrl;

  ImageWithBackAndShareButtons({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DecoratedBox(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            CustomColors.gradient_first,
            CustomColors.gradient_second
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          position: DecorationPosition.foreground,
          child: AspectRatio(
            aspectRatio: 375 / 343,
            child: Image.network(imageUrl, fit: BoxFit.fill),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
