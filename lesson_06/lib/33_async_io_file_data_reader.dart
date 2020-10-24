import 'dart:io';

void main() async {
  print('> Start');

  await for(final element in IOFileDataReader().read()) {
    ///
    /// Здесь мы читаем данные по мере необходимости их обработки
    /// OnDemand чтение данных
    ///
    print(element);
  }

  IOFileDataReader().read().listen(print);

  print('> End');
}

///
/// Мы разработчики своей библиотеки для чтения каких-либо данных.
/// Представим себе, что для чтения данных мы разработали такой интерфейс.
///
abstract class DataReader<T> {
  Stream<T> read();
}

///
/// Кажется, что такой контракт DataReader можно использовать для реализации
/// конкретных классов для чтения чело-либо. Например, создадим класс для
/// чтения из файла побайтово!
///
class IOFileDataReader implements DataReader<int> {

  @override
  Stream<int> read() async* {
    for(int i in Iterable.generate(10)) {
      sleep(Duration(milliseconds: 300));
      print('yield $i');
      yield i;
    }
  }
}
