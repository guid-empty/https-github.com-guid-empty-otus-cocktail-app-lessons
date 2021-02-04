import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomLoader extends StatelessWidget {
  final String text;

  const CustomLoader(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/images/loader.svg',
          height: 36,
          width: 36,
          color: Colors.white,
        ),
        const SizedBox(
          height: 14,
        ),
        Text(
          text,
          style: const TextStyle(
            color: const Color(0xffEAEAEA),
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
