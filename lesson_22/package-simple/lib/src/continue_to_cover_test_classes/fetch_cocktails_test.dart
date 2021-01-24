import 'dart:io';

import 'package:cocktail_app/src/continue_to_cover_test_classes/utilites/http_service.dart';

class FetchCocktailsTestHelper {
  final HttpService _httpService;

  FetchCocktailsTestHelper(this._httpService);

  Future<bool> fetchCocktailDetails(String id) async {
    final url = 'https://the-cocktail-db.p.rapidapi.com/lookup.php?i=$id';
    final _result = await _httpService.get(url);

    return _result == HttpResponse.ok;
  }
}
