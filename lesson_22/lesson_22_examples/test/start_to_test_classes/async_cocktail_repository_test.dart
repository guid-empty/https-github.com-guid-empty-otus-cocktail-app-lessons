import 'package:cocktail_app/core/models.dart';
@TestOn('vm')
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

void main() {
  test("Test fetch cocktail request", () async {
    var acr = AsyncCocktailRepository();
    await acr.fetchCocktailDetails("id");
  });
}

class HttpServiceMock extends Mock implements HttpService {}

class HttpResponse {
  static const ok = HttpResponse._('ok');
  static const error = HttpResponse._('error');

  final String _value;
  const HttpResponse._(this._value);

  @override
  int get hashCode => _value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is HttpResponse && runtimeType == other.runtimeType && _value == other._value;
}

class HttpService {
  Future<HttpResponse> get(String url) async {
    await Future.delayed(Duration(seconds: 60));
    return Future.value(HttpResponse.ok);
  }
}