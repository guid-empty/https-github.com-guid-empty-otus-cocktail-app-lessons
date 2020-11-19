import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson/core/models.dart';
import 'hero/cocktails/filter_page.dart';
import 'hero/coctail_detail_page.dart';
import 'hero/style/theme.dart';
import 'navigator/1_navigator_api.dart';
import 'navigator/data/send_data.dart';
import 'navigator/navigator_result_1.dart';
import 'navigator/navigator_result_2.dart';
import 'navigator/nested_navigation.dart';
import 'navigator/observers.dart';
import 'navigator/routes/cupertino_route_sample.dart';
import 'navigator/routes/custom_route_sample.dart';
import 'navigator/routes/material_route_sample.dart';
import 'overlay/overlay_state_page.dart';
import 'overlay/overlay_state_star_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      /* maintain material widgets in cupertino */
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: 'Investment',
      home: CupertinoPageScaffold(child: Scaffold(
        body: Center(child: TextInputWidget(position: TextInputPosition.top,)),
      )),
    );
  }
}

class TextInputWidget extends StatefulWidget {
  final TextInputPosition position;
  const TextInputWidget({
    Key key,
    @required this.position
  }) : super(key: key);
  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}
class _TextInputWidgetState extends State<TextInputWidget> {
  FocusNode _focus = new FocusNode();
  bool _isFocused = false;
  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
  }
  void _onFocusChange(){
    setState(() {
      _isFocused = _focus.hasFocus;
    });
  }
  @override
  Widget build(BuildContext context) {
    const Radius radius = Radius.circular(8);
    BorderRadius  borderRadius;
    switch(widget.position) {
      case TextInputPosition.top:
        borderRadius = const BorderRadius.vertical(top: radius);
        break;
      case TextInputPosition.middle:
        borderRadius = const BorderRadius.all(Radius.zero);
        break;
      case TextInputPosition.bottom:
        borderRadius = const BorderRadius.vertical(bottom: radius);
        break;
      case TextInputPosition.alone:
        borderRadius = const BorderRadius.all(radius);
        break;
    }
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 10),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
      ),
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Password",
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: TextEditingController(
                  text: "Value"
              ),
              focusNode: _focus,
              decoration: InputDecoration(
                errorMaxLines: 2,
                isDense: true,
                contentPadding: EdgeInsets.all(0),
                border: InputBorder.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
enum TextInputPosition {
  top,
  middle,
  bottom,
  alone
}
