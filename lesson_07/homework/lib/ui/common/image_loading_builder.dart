import 'package:flutter/material.dart';

Widget imageLoadingBuilder(
    BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
  if (loadingProgress == null) {
    return child;
  } else {
    final progress = (loadingProgress.cumulativeBytesLoaded /
            loadingProgress.expectedTotalBytes *
            100)
        .ceil();

    return Align(
      alignment: const Alignment(0, -.8),
      child: Text(
        'Loading image\n\n$progress%',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
