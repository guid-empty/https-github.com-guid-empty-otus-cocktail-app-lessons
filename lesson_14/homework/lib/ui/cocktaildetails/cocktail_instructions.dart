import 'package:flutter/material.dart';
import '../../core/models.dart';

class CocktailInstructions extends StatelessWidget {
  final Cocktail cocktail;
  final String fontFamily;

  CocktailInstructions(this.cocktail, this.fontFamily);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFF201F2C),
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _buildInstructionsHeader(),
          ..._buildInstructionsContent()
        ]));
  }

  Widget _buildInstructionsHeader() {
    return Container(
        padding: EdgeInsets.fromLTRB(32, 24, 0, 24),
        child: Text("Инструкция для приготовления",
            style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: fontFamily,
                fontWeight: FontWeight.w400)));
  }

  //todo стоило ли так возиться чтобы преобразовать изначальный текст в буллеты? В любом случае, весьма хрупкое решение.
  List<Widget> _buildInstructionsContent() {
    var split = cocktail.instruction.split("- ");
    split.remove("");
    var res = List<Widget>.generate(
        split.length,
        (index) => Row(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 8, 0),
                    child: Text("•",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            height: 1.21,
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.w400))),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Text(split[index],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                height: 1.21,
                                fontFamily: fontFamily,
                                fontWeight: FontWeight.w400))))
              ],
            ));
    res.add(SizedBox(height: 40));
    return res;
  }
}
