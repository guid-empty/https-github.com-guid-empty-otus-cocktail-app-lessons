import 'dart:io';

///
/// Поговорим про Iterable<int>
/// Iterator<E>
///   bool moveNext();
///   E get current
///
///
void main() {
  print('> Start');

  ///
  /// Обычный сценарий обхода коллекции - используем
  /// for in
  ///
  //  final collection = [1, 2, 3];
  //  for (final i in collection) {
  //    print('collection item is $i');
  //  }
  //
  //  ///
  //  /// Но этот сценарий ForIn, ForEach подразумевает использование
  //  /// итератора
  //  ///
  //  /// Как бы мы могли обойти коллекицю, используя ее итератор
  //  ///
  //  final iterator = (collection as Iterable<int>).iterator;
  //  while (iterator.moveNext()) {
  //    print(iterator.current);
  //  }

  ///
  /// Можно ли сделать такой итератор, чтобы в какой-то момент времени
  /// можно было прекратить обход по коллекции?
  /// И чтобы значение получалось потребованию? (допустим, генерация таких
  /// значений очень дорогая по времени)
  ///
  //  final iterator = getTopNCollection(10, 5).iterator;
  for (final element in getTopNCollection(10, 5)) {
    print(element);
  }

  print('> End');
}

///
/// 1.  Попробуем реализовать свой Iterable<T>
///
//Iterable<int> getTopNCollection(int start, int count) {
//  for (var i = start; i < start + 10; i++) {}
//}

///
///2.  Попробуем реализовать свой Iterable<T> sync*
///
//Iterable<int> getTopNCollection(int start, int count) sync* {
//  for (var i = start; i <= (start + count); i++) {
//    print('yield $i');
//    yield i;
//  }
//}

///
///3.  Попробуем реализовать свой Iterable<T> sync*
///    Сразу выкидываем набор элементов
///
//Iterable<int> getTopNCollection(int start, int count) sync* {
//  final result = <int>[];
//  for (var i = start; i <= (start + count); i++) {
//    result.add(i);
//  }
//
//  yield* result;
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
Iterable<int> getTopNCollection(int start, int count) sync* {
  if (start <= (start + count)) {
    yield start;
    yield* getTopNCollection(++start, count - 1);
  }
}
