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
//        });
//      }

Future<void> main() async {
  final http = MyOwnHttpImplementor();
    final value = await http.get(Uri.parse('http://ya.ru'));

    // <<  Continuation >>

    print(value);

}

class MyOwnHttpImplementor {
  Future<String> get(Uri uri) {
    final completer = Completer<String>();

    Future.delayed(Duration(seconds: 3), () {
      completer.complete('Successfull!');

      //  todo: uncomment this
      //  completer.completeError(HttpException('Uri is not accessible'));
    });

    return completer.future;
  }
}
