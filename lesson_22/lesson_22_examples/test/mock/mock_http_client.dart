import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

class MockHttpClient extends Mock implements http.Client {
  void produceStubResponse(String url, {int status, String responseBody}) {
    when(
      get(url, headers: anyNamed('headers')),
    ).thenAnswer((Invocation a) async {
      return Future.value(http.Response(responseBody, status));
    });
  }

  List<dynamic> getCaptured() {
    return verify(get(captureAny, headers: captureAnyNamed('headers'))).captured;
  }
}
