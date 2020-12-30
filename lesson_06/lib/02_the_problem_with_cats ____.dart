import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

import 'hidden/application.dart';

void main() {
  runApp(ApplicationWidget(child: FileDataReaderWidget()));
}

///
/// Мы разработчики своей библиотеки для чтения каких-либо данных.
/// Представим себе, что для чтения данных мы разработали такой интерфейс.
/// Обратите внимание - мы задействовали здест даже Generics и наш DataReader
/// может читать любые данные!
///
abstract class DataReader<T> {
  Future<Iterable<T>> read();
}

///
/// Кажется, что такой контракт DataReader можно использовать для реализации
/// конкретных классов для чтения чело-либо. Например, создадим класс для
/// чтения из файла побайтово!
///
class IOFileDataReader implements DataReader<int> {
  @override
  Future<Iterable<int>> read() async {
    ///
    /// Представим, что это файл, состоящий из 15 байт
    ///
    final data = Iterable<int>.generate(15, (i) {
      //  todo: remove comment here
      //  Мы можем сэмулировать длительную операцию чтения файла (или запрос по HTTP),
      //  который будет выполняться синхронно.
      sleep(Duration(seconds: 1));
      return i;
    });

    return data;
  }
}

class FileDataReaderWidget extends StatefulWidget {
  @override
  _FileDataReaderWidgetState createState() => _FileDataReaderWidgetState();
}


class _FileDataReaderWidgetState extends State<FileDataReaderWidget> {
  final List<int> fileData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Stream!'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Text('Весь ваш код выполняется в одном потоке', textAlign: TextAlign.center),
            SizedBox(height: 140, child: Image.asset('assets/gifs/so_fast_cats.gif')),
            for (final i in fileData) Center(child: Text('Это элемент $i из файла')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _readData,
        tooltip: 'Get Data',
        child: Icon(Icons.file_download),
      ),
    );
  }

  void _readData() async {
    final fileReader = IOFileDataReader();

    fileData.clear();

    ///
    /// Несмотря на то, что опрерация чтения является асинхронной, само чтение всего контента
    /// является длительной операцией и выполняется синхронно
    ///
    for (final data in await fileReader.read()) {
      print('Current data is $data');
      setState(() {
        fileData.add(data);
      });
    }
  }
}
