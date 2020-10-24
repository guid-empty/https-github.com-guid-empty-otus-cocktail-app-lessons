import 'dart:async';

void main() {
  print('> Start');

  const elementData = 10;
  const nextElementData = 11;

  ///
  /// Создаем поток, обощив его типом int для его элементов
  ///
  final streamController = StreamController<int>();

  ///
  /// Положим в Stream при помощи Event Sink два элемента
  ///
  streamController.sink
    ..add(elementData)
    ..add(nextElementData);

  ///
  /// for each для коллекций выполняется синхронно
  ///
  Iterable.generate(10).forEach((element) => print('element data is $element'));

  ///
  /// Как вы считаете, как будет выполнен for each для потока?
  ///
  streamController.stream.forEach((element) {
    print('element data is $element');
  });


  ///
  /// По завершении работы с потоком, когда он не нужен, закрываем его
  ///
  streamController.close();

  print('> End');
}


