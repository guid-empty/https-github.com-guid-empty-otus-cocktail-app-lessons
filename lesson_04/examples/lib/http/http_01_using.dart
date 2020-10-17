import 'dart:convert' as convert;
import 'dart:io';

import 'package:http/http.dart' as http;
//
//Future<void> main() async {
//  final client = http.Client();
//  try {
//    const url = 'https://the-cocktail-db.p.rapidapi.com/popular.php';
//
//    //    список доступных операций
//    //
//    //    If you're planning on making multiple requests to
//    //    the same server, you should use a single [Client] for all of those requests.
//    //
//    //    Future<String> response = http.get(url, ...);
//    //    Future<String> response = http.put(url, ...);
//    //    Future<String> response = http.post(url, ...);
//    //    Future<String> response = http.delete(url, ...);
//    //    Future<String> response = http.patch(url, ...);
//    //    Future<String> response = http.read(url, ...);
//
//    var response = await client.get(
//      url,
//      headers: {
//        'x-rapidapi-key': 'e5b7f97a78msh3b1ba27c40d8ccdp105034jsn34e2da32d50b',
//      },
//    );
//
//    if (response.statusCode == 200) {
//      final jsonResponse = convert.jsonDecode(response.body);
//      final drinksCollection = jsonResponse['drinks'] as Iterable<dynamic>;
//      assert(drinksCollection.isNotEmpty);
//    } else {
//      throw HttpException('Request failed with status: ${response.statusCode}');
//    }
//  } on http.ClientException catch (error) {
//    throw HttpException('Request failed with status: $error');
//  } on SocketException catch (_) {
//    print('Похоже, что какие-то проблемы с connection!');
//  } catch (_) {
//    print('Чтото пошло не так!');
//  } finally {
//    client.close();
//  }
//}

//  todo: uncomment this - then catchError whenComplete

  void main() {
    final client = http.Client();
    const url = 'https://the-cocktail-db.p.rapidapi.com/popular.php';

    client.get(
      url,
      headers: {
        'x-rapidapi-key': 'e5b7f97a78msh3b1ba27c40d8ccdp105034jsn34e2da32d50b',
      },
    ).then(
      (response) {
        if (response.statusCode == 200) {
          final jsonResponse = convert.jsonDecode(response.body);
          final drinksCollection = jsonResponse['drinks'] as Iterable<dynamic>;
          assert(drinksCollection.isNotEmpty);
        }
      },
    ).catchError(
      (error) {
        throw HttpException('Request failed with status: $error');
      },
      test: (error) => error is http.ClientException,
    ).catchError(
      (error) {
        print('Похоже, что какие-то проблемы с connection!');
      },
      test: (error) => error is SocketException,
    ).catchError(
      (error) {
        print('Чтото пошло не так!');
      },
    ).whenComplete(() {
      client.close();
    });
  }
