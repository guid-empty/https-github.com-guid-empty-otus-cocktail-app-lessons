import 'dart:async';

void main() {
  final http = MyOwnHttpImplementor();
  final uri = Uri.parse('http://ya.ru');

  ///
  /// todo: comment it
  ///
  final future = http.get(uri);
  future.then((value) {
    ///
    /// получили данные
    ///
    /// обновляем наш виджет
    //setState((){});
  });


  ///
  /// Мы создали подписку на появление элементов в нашем цикле
  ///
  final subscription = http
      .get(uri)
      .asStream()
      .listen((event) {
        ///
        /// получили данные
        ///
        /// обновляем наш виджет
        /// setState((){});
        print('получили данные $event, обновим виджет!');
      });

  ///
  /// через три секунды нам надоедает ждать, мы прекращаем нашу подписку
  ///
  Future.delayed(Duration(seconds: 3), () {
    print('прекращаем ожидание данных');
    subscription.cancel();
  });
}

class MyOwnHttpImplementor {
  Future<Iterable<int>> get(Uri uri) {
    final completer = Completer<Iterable<int>>();


    //  todo: uncomment
    //  Future.delayed(Duration(seconds: 10), () {

    Future.delayed(Duration(seconds: 1), () {

      completer.complete(Iterable<int>.generate(10, (i) {
        print('получаем данные $i');
        return i;
      }));


    });

    return completer.future;
  }
}
