void main() {

  final value = 10;                             //  single sync value
  final valueInFuture = Future(() => value);    //  single async value

  final iterable = [10, 11];                    //  single sync iterable
  final stream = Stream.fromIterable(iterable); //  single async iterable

  print(valueInFuture);
  print(stream);

}
