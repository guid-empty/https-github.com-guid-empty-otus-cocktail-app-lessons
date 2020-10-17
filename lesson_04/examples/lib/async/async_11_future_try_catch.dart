import 'dart:async';
import 'dart:io';

//void main() {
//  final http = MyOwnHttpImplementor();
//  http
//      .get(Uri.parse('http://ya.ru'))
//      .then((value) {
//        //  <<  Continuation >>
//
//          print(value);
//        })
//            .catchError((error) {
//          print(error);
//        });
//      }

//todo: uncomment this
//Future<void> main() async {
//  final http = MyOwnHttpImplementor();
//  try {
//    ///
//    ///  ожидаем получение результата
//    ///  после await весь код становится областью Continuation
//    ///
//    final value = await http.get(Uri.parse('http://ya.ru'));
//
//    // <<  Continuation >>
//
//    print(value);
//  } catch (error) {
//    print(error);
//  }
//}

//todo: uncomment this
Future<void> main() async {
  final http = MyOwnHttpImplementor();
  try {
    ///
    ///  ожидаем получение результата
    ///  после await весь код становится областью Continuation
    ///
    final value = await http.get(Uri.parse('http://ya.ru'));

    // <<  Continuation >>

    print(value);
  } catch (error) {
    print(error);
  } finally {
    print('Операция завершена - независимо от того, с ошибкой или нет');
  }
}


class MyOwnHttpImplementor {
  Future<String> get(Uri uri) {
    final completer = Completer<String>();

    Future.delayed(Duration(seconds: 3), () {
      //  completer.complete('Successfull!');

      //  todo: uncomment this
      completer.completeError(HttpException('Uri is not accessible'));
    });

    return completer.future;
  }
}
