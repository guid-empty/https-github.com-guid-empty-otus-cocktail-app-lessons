import 'dart:async';

void main() async {
  const elementData = 10;
  const nextElementData = 11;

  final streamController = StreamController<int>.broadcast();

  ///
  /// По умолчанию потоки позволяют только разовую подписку,
  /// Если создать подписку повторно, то получим ошибку
  /// Bad state: Stream has already been listened to.
  ///
  /// uncomment code
  /// final streamController = StreamController<int>.broadcast();

  ///
  /// Мы создали подписку на появление элементов в нашем цикле
  ///
  final subscription1 = streamController.stream.listen((element) => print('element data is $element'));
  final subscription2 = streamController.stream.listen((element) => print('element data is $element'));

  ///
  /// добавим элементы в наш поток
  ///
  streamController.sink.add(elementData);
  streamController.sink.add(nextElementData);

  ///
  /// Так как пример синхронный, то в случае синхронного закрытия и потока и подписки
  /// наша подписка не будет иметь смысла
  /// Поэтому мы закроем нашу подписку и сам поток в следующем фрейме нашего event loop
  ///
  Future(() {
    subscription1.cancel();
    subscription2.cancel();
    streamController.close();
  });
}