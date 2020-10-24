import 'dart:async';

void main() async {
  const elementData = 10;
  const nextElementData = 11;

  final streamController = StreamController<int>();

  ///
  /// Мы создали подписку на появление элементов в нашем цикле
  ///
  final subscription = streamController.stream.listen((element) => print('element data is $element'));

  streamController.sink
    ..add(elementData)
    ..add(nextElementData);

  ///
  /// Так как пример синхронный, то в случае синхронного закрытия и потока и подписки
  /// наша подписка не будет иметь смысла
  /// Поэтому мы закроем нашу подписку и сам поток в следующем фрейме нашего event loop
  ///
  Future(() {
    subscription.cancel();
    streamController.close();
  });
}
