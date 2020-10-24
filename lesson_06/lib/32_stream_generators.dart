import 'dart:io';

void main() async {
  print('> Start');


  await for(final element in getTopNCollection(10, 5)) {
    print(element);
  }

  //  getTopNCollection(10, 5).listen(print);


  print('> End');
}

///
/// 1.  Попробуем реализовать свой Stream<T>
///
//Stream<int> getTopNCollection(int start, int count) {
//
//  for(var i = start; i < start + 10; i++) {
//
//  }
//}


///
///2.  Попробуем реализовать свой Iterable<T> sync*
///
///
///
///
///
///
//Stream<int> getTopNCollection(int start, int count) async* {
//  for (var i = start; i <= (start + count); i++) {
//    print('yield $i');
//    yield i;
//  }
//}

///
///3.  Попробуем реализовать свой Iterable<T> sync*
///    Сразу выкидываем набор элементов
///
//Stream<int> getTopNCollection(int start, int count) async* {
//  final result = <int>[];
//  for (var i = start; i <= (start + count); i++) {
//    result.add(i);
//  }
//
//  yield* Stream.fromIterable(result);
//}

///
///4.  Попробуем реализовать свой рекурсивный Iterable<T> sync*
///    будет примерно такой набор вызовов
///     10, 5
///     11, 4
///     12, 3
///     13, 2
///     14, 1
///     15, 0
///
Stream<int> getTopNCollection(int start, int count) async* {
  if (start <= (start + count)) {
    yield start;
    yield* getTopNCollection(++start, count - 1);
  }
}
