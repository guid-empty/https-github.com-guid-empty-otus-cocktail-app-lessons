import 'dart:async';

///
/// Рассмотрим один из сценариев использования Stream в приложении
///
void main() {
  final outputService = OutputService();

  ///
  /// Добавим функцию (в классах это будет некий метод), который будет
  /// слушать наш стрим на получение из него данных
  /// Обычно используется нотация handle<SomeData|SomeEvent>
  ///
  final handleSomeEvent = (int event) {
    print('пришло оповещение $event');
  };

  final subscription = outputService.onSomeEvent.listen(handleSomeEvent);

  ///
  /// Упростить код
  ///
  /// final subscription = outputService.onSomeEvent.listen(handleSomeEvent);

  outputService.doSomeThing();

  Timer(Duration(seconds: 5), () {
    ///
    /// По завершении работы с подпиской хорошее правило - закончить
    /// с ней работы посредством метода cancel()
    /// Если заканчиваете работу со стримом, то правило хорошего тона -
    /// очистить используемые ресурсы и закрыть стрим (может, он держит
    /// порт или файл открытым??? )
    ///
    subscription.cancel();
    outputService.dispose();
  });
}

///
/// Создаем сервис, в задачи которого взодит оповещение о каком-нибудь событии
///
class OutputService {
  ///
  /// Создаем приватный контроллер стрима, чтобы нельзя было управлять потоком снаружи
  /// нашего класса
  ///
  final _someEventStreamController = StreamController<int>.broadcast();

  ///
  /// В публичном контракте класса определяем наш стрим
  /// Вы можете использовать разные стримы для оповещения о разных событиях
  /// вашей бизнес логики (onError, onData, onRepaint, onPayment, onComplete, и так далее)
  /// Обычно используется нотация on<Data>
  ///
  Stream<int> get onSomeEvent => _someEventStreamController.stream;

  ///
  /// В кастомной логике своего класса мы в необходимый момент
  /// можем отправлять данные в наш поток
  ///
  /// ps: вместо комбинации Timer.periodic и StreamController
  /// я мог бы использовать более короткую форму записи - Stream.periodic
  /// но это будет в примере дальше
  ///
  void doSomeThing() => _timer = Timer.periodic(
        Duration(seconds: 1),
        (timer) => _someEventStreamController.sink.add(timer.tick),
      );

  Timer _timer;
  void dispose() {
    _timer.cancel();
    _someEventStreamController.close();
  }
}
