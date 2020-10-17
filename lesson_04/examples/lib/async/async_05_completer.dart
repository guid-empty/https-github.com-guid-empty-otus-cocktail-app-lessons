import 'dart:async';
import 'dart:io';

void main() {
  final http = MyOwnHttpImplementor();
  http
      .get(Uri.parse('http://ya.ru'))
      .then((value) {
          print(value);
        })
      .catchError((error) {
          print(error);
        });
}

class MyOwnHttpImplementor {
  Future<String> get(Uri uri) {
    final completer = Completer<String>();

      completer.completeError(HttpException('Uri is not accessible'));
    return completer.future;
  }
}
