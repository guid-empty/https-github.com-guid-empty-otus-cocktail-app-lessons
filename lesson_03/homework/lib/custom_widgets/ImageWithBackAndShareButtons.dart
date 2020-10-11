import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageWithBackAndShareButtons extends StatelessWidget {
  final String imageUrl;

  ImageWithBackAndShareButtons({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.network(imageUrl,
        fit: BoxFit.fill,
        width: width,
        height: 343,),
        Positioned(
          bottom: 0,
          child: Container(
            color: Colors.transparent,
            width: width,
            height: 172,
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(14, 13, 19, 0),
                  Color(0xff0e0d13)
                ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)
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
                  icon: Icon(Icons.arrow_back,
                  color: Colors.white,),
                  onPressed: () {
                    print("back pressed");
                  },
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.share,
                  color: Colors.white,),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}