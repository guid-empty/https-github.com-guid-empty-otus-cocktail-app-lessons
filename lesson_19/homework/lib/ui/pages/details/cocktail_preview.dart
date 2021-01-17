import 'package:cocktail_app/helpers/share_helper.dart';
import 'package:cocktail_app/ui/style/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class CocktailPreview extends StatelessWidget {
  final String imageUrl;
  final String description;

  CocktailPreview({this.imageUrl, this.description});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 375 / 343,
          child: Image.network(imageUrl, fit: BoxFit.fill),
        ),
        Positioned(
          bottom: 0,
          width: 50,
          child: AspectRatio(
            aspectRatio: 375 / 172,
            child: Container(
              color: Colors.transparent,
              foregroundDecoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [CustomColors.gradient_first, CustomColors.gradient_second],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
        ),
        SafeArea(
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
                  onPressed: () => Navigator.of(context).pop(),
                ),
                IconButton(
                  onPressed: () async {
                    String imageFilePath = await saveImageToFile(imageUrl);
                    Share.shareFiles([imageFilePath], subject: "Look at this cocktail", text: description);
                  },
                  icon: Icon(
                    Icons.share,
                    color: Colors.white,
                  )
                )
              ]
            )
          )
        )
      ]
    );
  }
}
