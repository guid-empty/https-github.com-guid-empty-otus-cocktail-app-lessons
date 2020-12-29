import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

Iterable<Color> generateColors() sync* {
  final tween = ColorTween(begin: Colors.blue, end: Colors.red);

  final duration = Duration(seconds: 1);
  final step = Duration.millisecondsPerSecond / 60;
  print(duration.inMilliseconds);
  for (var currentTime = 0.0; currentTime < duration.inMilliseconds; currentTime += step) {
    final value = tween.lerp(currentTime / duration.inMilliseconds);
    print('current time is $currentTime, tween is $value');
    yield value;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final colors = generateColors().toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Implicit Animations - Color Tween'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            final color = colors[index];
            return ListTile(
              title: Text(color.toString()),
              tileColor: color,
            );
          },
        ),
      ),
    );
  }
}
