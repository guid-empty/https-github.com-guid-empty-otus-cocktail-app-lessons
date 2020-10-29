import 'dart:async';

///
/// Future to Stream
///
//void main() {
//  const futureValue = 10;
//  final future = Future<int>.delayed(Duration(seconds: 1), () => futureValue);
//
//
//  ///
//  /// равнозначно использованию конструктора Stream<T>.fromFuture(this)
//  ///
//  future.asStream().listen((element) {
//    print('element data is $element');
//  });
//
//  ///
//  /// используется в asStream()
//  ///
//  Stream.fromFuture(future).listen((element) {
//    print('element data is $element');
//  });
//
//}


///
/// Stream to Future
///
void main() {

  final stream = Stream<int>.periodic(Duration(seconds: 1), (element) {
    print(element);
    return element;
  });

  final future = stream.firstWhere((element) => element == 3);
  future.then((value) => print('Прошло 3 секунды'));
}
