import 'dart:async';

void main() {
  print('> Start');

  const elementData = 10;
  const nextElementData = 11;

  final streamController = StreamController<int>();

  ///
  /// Для демонстрауии асинхронного чтения из потока мы в поток сначала положим один элемент
  ///
  streamController.sink.add(elementData);

  ///
  /// Затем разместим в event loop некоторые пользовательские действия
  ///
  Timer.run(() {
    print('user onTap gesture in event loop');
  });

  Future(() {
    print('another async operation to process http response');
  });

  ///
  /// Затем поместим в потом еще один элемент потока
  ///
  Timer.run(() {
    streamController.sink.add(nextElementData);
  });

  ///
  /// Мы рассчитываем на то, что прочитаем из потока два элемента
  /// Так и произойдет, только второй элемент мы прочитаем асинхронно после того, как будет обработано
  /// пользовательское действие
  ///
  streamController.stream.forEach((element) {
    print('element data is $element');
  });

  //  streamController.close();

  print('> End');
}

///
/// До этого момента мы использовали for each
/// для чтения потока.
/// Есть и другой способ чтения данных аналоично тому, как мы обходим
/// итерируемые объекты Iterable
///
/// todo: await for approach to read the stream
/// uncomment code below

//
//void main() async {
//  print('> Start');
//
//  const elementData = 10;
//  const nextElementData = 11;
//  final streamController = StreamController<int>();
//
//  streamController.sink.add(elementData);
//
//  Timer.run(() {print('user onTap gesture in event loop');});
//  Timer.run(() {streamController.sink.add(nextElementData); });
//
//  readData(streamController.stream);
//
//  Future(() {
//    streamController.close();
//  });
//  print('> End');
//}
//
//Future<void> readData(Stream<int> stream) async {
//  await for (final element in stream) {
//    print('element data is $element');
//  }
//}
