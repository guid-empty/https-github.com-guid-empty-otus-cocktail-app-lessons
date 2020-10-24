import 'dart:async';

void main() async {
  const elementData = 10;
  const nextElementData = 11;
  final errorObject = StateError('Element is not allowed');

  final streamController = StreamController<int>();

  final StreamSubscription subscription = streamController.stream.listen(
    (element) {
      print('element data is $element');
    },
    onError: (error) => print(error),
    onDone: () => print('all read!'),
    cancelOnError: true, /* true завершит передачу данных */
  );

  ///
  /// Отправим нашему подписчику оповещение об ошибке
  ///
  streamController.sink.addError(errorObject);

  ///
  /// Пусть кроме ошибки, в нашем потоке будут и полезые данные
  ///
  streamController.sink.add(elementData);
  streamController.sink.add(nextElementData);

  ///
  /// Так как пример синхронный, то в случае синхронного закрытия и потока и подписки
  /// наша подписка не будет иметь смысла
  /// Поэтому мы закроем нашу подписку и сам поток в следующем фрейме нашего event loop
  ///
  /// В данном конкретном примере мы кенселлим подписку немного позднее, чем закрываем
  /// сам стрим - делаем так потому, что до прекращения действия подписки у нас еще
  /// действует коллбек onDone. Если прекратим подписку вместе с закрытием потока в одной
  /// синхронной операции, то onDone в данном примере мы просто не увидим (так как
  /// сама подписка будет уже прекращена)
  ///
  Future(() {
    streamController.close();
    Future(() => subscription.cancel());
  });
}

///
/// ==========================================================================================
/// посмотрите на сценарий использование Future API
/// и сценарий использования подписки StreamSubscription
/// ==========================================================================================
///
void commonScenarios() {
  const futureResolved = 10;

  ///
  /// Работа с Future подразумеает регистрацию коллбек
  ///   на получение данных,
  ///   обработчик ошибки и
  ///   обработчик завершения работы с подпиской
  ///
  Future<int>(() => futureResolved)
      .then((int value) => print(value))
      .catchError((error) => print(error))
      .whenComplete(() => print('all done'));

  ///
  /// Работа с подпиской Stream
  /// мы имеем коллбек
  ///   на получение данных,
  ///   обработчик ошибки и
  ///   обработчик завершения работы с подпиской
  ///
  final streamController = StreamController<int>();

  //  listen(
  //    void onData(T event)?,
  //    {    onError,
  //         onDone()
  //    }

  final subscription = streamController.stream.listen(
    (element) => print('element data is $element'),
    onError: (error) => print(error),
    onDone: () => print('all read!'),
  );

  subscription.cancel();
  streamController.close();
}
