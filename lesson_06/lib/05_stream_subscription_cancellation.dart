import 'dart:async';

void main() async {
  final streamController = StreamController<int>();

  ///
  /// Мы создали подписку на появление элементов в нашем цикле
  ///
  final subscription = streamController.stream.listen((element) => print('получаем данные $element'));

  ///
  /// Запустим периодическое формирование данных в нашем стриме
  ///
  final periodicTimer = Timer.periodic(Duration(seconds: 1), (timer) {
    final elementData = timer.tick;
    print('генерируем новые данные $elementData');
    streamController.sink.add(elementData);
  });

  ///
  /// Через три секунды прекратим получение данных
  ///
  Timer(Duration(seconds: 3), () => subscription.cancel());

  ///
  /// По завершении 5 секунд вообще закроем контроллер
  Timer(Duration(seconds: 10), () {
    periodicTimer.cancel();
    streamController.close();
  });
}
