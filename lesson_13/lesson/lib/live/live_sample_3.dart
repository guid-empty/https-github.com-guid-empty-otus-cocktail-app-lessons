import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: RootScreen(),
  ));
}

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RootScreen'),
      ),
      body: Center(
        child: Column(
          children: [
            FlatButton(
                onPressed: () => _openPicker(context),
                child: Text('Open Picker')),
            Text('Current index: $currentIndex')
          ],
        ),
      ),
    );
  }

  void _openPicker(BuildContext context) {
    //todo реализовать получение index от PickerScreen
    // и обновить currentIndex
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return PickerScreen();
    }));
  }
}

class PickerScreen extends StatelessWidget {
  const PickerScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item picker'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          title: Text('Вариант $index'),
          onTap: () {
            //todo реализовать закрытие экрана
            // и передать index на предыдущий экран
          },
        );
      }),
    );
  }
}
