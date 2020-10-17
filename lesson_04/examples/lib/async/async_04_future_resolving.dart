///
/// Create Delayed Future & Resolve the result
///
const featureResult = 5;

//void main() {
//  Future<int>.delayed(Duration(seconds: 3), ourComputation).
//  then((int value) {
//    print('current result is $value!');
//  });
//
//  print('Main method is complete!');
//}

///
/// Представим, что здесь выполняется сложный код,
/// который вернет нам какое-то вычисление
///
int ourComputation() {
  throw Exception('Чтото случилось (');
//  return featureResult;
}

///
/// todo: uncomment this - whenComplete
//void main() {
//  Future<int>.delayed(Duration(seconds: 3), ourComputation).then((value) {
//    print('current result is $value!');
//  }).whenComplete(() {
//    print('Операция завершена - независимо от того, с ошибкой или нет');
//  });
//
//  print('Main method is complete!');
//}

///
/// todo: uncomment this - catchError
///
void main() {
  Future<int>.delayed(Duration(seconds: 3), ourComputation).then((value) {
    print('current result is $value!');
  }).catchError((error) {
    print(error);
  }).whenComplete(() {
    print('Операция завершена - независимо от того, с ошибкой или нет');
  });

  print('Main method is complete!');
}
