import 'dart:io';

import 'package:cocktail_app/src/continue_to_cover_test_classes/fetch_cocktails_test.dart';
@TestOn('vm')
// ignore: invalid_annotation_target
@Timeout(Duration(seconds: 10))
import 'package:test/test.dart';
import 'package:cocktail_app/src/continue_to_cover_test_classes/utilites/http_service.dart';
import 'package:mockito/mockito.dart';

void main() {
  HttpService httpServiceMock;
  FetchCocktailsTestHelper fetchCocktailsTestHelper;

  setUp(() {
    httpServiceMock = HttpServiceMock();
  });

  group('Fetch cocktails repository', () {
    test('Success', () async {
      when(httpServiceMock.get(any))
          .thenAnswer((realInvocation) => Future.value(HttpResponse.ok));
      fetchCocktailsTestHelper = FetchCocktailsTestHelper(httpServiceMock);

      final actualOperationResult = await fetchCocktailsTestHelper.fetchCocktailDetails('1');

      expect(actualOperationResult, isTrue);
    });

    test('Error', () async {
      when(httpServiceMock.get(any))
          .thenAnswer((realInvocation) => Future.value(HttpResponse.error));
      fetchCocktailsTestHelper = FetchCocktailsTestHelper(httpServiceMock);

      final actualOperationResult = await fetchCocktailsTestHelper.fetchCocktailDetails('1');

      expect(actualOperationResult, isFalse);
      verify(httpServiceMock.get(any)).called(1);
    });
  });
}

class HttpServiceMock extends Mock implements HttpService {}
