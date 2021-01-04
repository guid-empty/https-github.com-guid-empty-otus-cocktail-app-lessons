import 'package:flutter/material.dart';
import 'package:lesson_20_example/lesson_20_example.dart';

class PigeonUsageWidgetExample extends StatefulWidget {
  @override
  _PigeonUsageWidgetExampleState createState() =>
      _PigeonUsageWidgetExampleState();
}

class _PigeonUsageWidgetExampleState extends State<PigeonUsageWidgetExample> {
  final _api = MultiplyApi();

  int _multiplicand = 0;
  int _multiplier = 0;
  int _result = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Multiplicand is $_multiplicand',
          style: DefaultTextStyle.of(context).style.copyWith(fontSize: 24),
        ),
        Text(
          'Multiplier is $_multiplier',
          style: DefaultTextStyle.of(context).style.copyWith(fontSize: 24),
        ),
        Text(
          'Result is $_result',
          style: DefaultTextStyle.of(context).style.copyWith(fontSize: 24),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlatButton(
              child: Text('Increment multiplicand'),
              color: Colors.green,
              textColor: Colors.white,
              onPressed: () {
                setState(() => _multiplicand++);
                _multiply();
              },
            ),
            FlatButton(
              child: Text('Decrement multiplicand'),
              color: Colors.green,
              textColor: Colors.white,
              onPressed: () {
                setState(() => _multiplicand--);
                _multiply();
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlatButton(
              child: Text('Increment multiplier'),
              color: Colors.orange,
              textColor: Colors.white,
              onPressed: () {
                setState(() => _multiplier++);
                _multiply();
              },
            ),
            FlatButton(
              child: Text('Decrement multiplier'),
              color: Colors.orange,
              textColor: Colors.white,
              onPressed: () {
                setState(() => _multiplier--);
                _multiply();
              },
            ),
          ],
        ),
      ],
    );
  }

  Future<void> _multiply() async {
    final request = MultiplyRequest();
    request.multiplicand = _multiplicand;
    request.multiplier = _multiplier;
    final result = await _api.multiply(request);
    setState(() => _result = result.result);
  }
}
