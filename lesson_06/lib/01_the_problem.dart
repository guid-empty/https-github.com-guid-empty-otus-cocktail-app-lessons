import 'dart:io';

void main() {
  print('> Start');

  final fileReader = IOFileDataReader();
  for (final data in fileReader.read()) {
    print('Current data is $data');
  }
  print('> End');
}

///
/// Мы разработчики своей библиотеки для чтения каких-либо данных.
/// Представим себе, что для чтения данных мы разработали такой интерфейс.
/// Обратите внимание - мы задействовали здест даже Generics и наш DataReader
/// может читать любые данные!
/// Но где здесь проблема????
///
abstract class DataReader<T> {
  Iterable<T> read();
}

///
/// Кажется, что такой контракт DataReader можно использовать для реализации
/// конкретных классов для чтения чело-либо. Например, создадим класс для
/// чтения из файла побайтово!
///
class IOFileDataReader implements DataReader<int> {
  @override
  Iterable<int> read() {
    ///
    /// Представим, что это файл, состоящий из 15 байт
    ///
    final data = Iterable<int>.generate(15, (i) {
      //  todo: remove comment here
      //  Мы можм сэмулировать длительную операцию чтения файла (или запрос по HTTP),
      //  который будет выполняться синхронно.
      sleep(Duration(seconds: 1));
      return i;
    });

    return data;
  }
}
