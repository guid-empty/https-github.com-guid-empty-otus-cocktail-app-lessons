void main() {

  final iterable = Iterable.generate(20);                           //  single  sync iterable
  final stream = Stream.fromIterable(iterable).asBroadcastStream(); //  single async iterable

  ///
  /// Мы можем выполнять трансформации над нашими стримами, получая новые
  ///
//  stream.map((element) => element * 2).listen(print);

  stream.map((element) => element).takeWhile((element) => element < 10).listen((element) {
    print('читаю только элементы < 10, $element');
  });


  ///  методы, которые выполняют модицифкацию стрима
  ///  Stream<S> map<S>(S Function(T event) convert);
  ///  Stream<T> skip(int count);
  ///  Stream<T> skipWhile(bool Function(T element) test);
  ///  Stream<T> take(int count);
  ///  Stream<T> takeWhile(bool Function(T element) test);
  ///  Stream<T> where(bool Function(T event) test);
  ///  Stream<R> cast<R>();
  ///  Stream<S> expand<S>(Iterable<S> Function(T element) convert);

}
