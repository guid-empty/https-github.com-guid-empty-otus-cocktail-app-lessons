import 'package:injectable/injectable.dart';
import 'package:lesson_16/app/repository/favorites_repository.dart';
import 'package:lesson_16/app/storage/persistent_storage.dart';

import '../../models.dart';

@Injectable(as: FavoritesRepository)
class FavoritesLocalRepository extends FavoritesRepository {
  var _favoritesCache = List<CocktailDefinition>();

  final Storage storage;

  static const _key = 'favorites';

  FavoritesLocalRepository(this.storage);

  @override
  Future<Iterable<CocktailDefinition>> fetchFavorites() async {
    await storage.init();
    final data = await storage.getValue(_key) as List;
    _favoritesCache = data?.map((e) => CocktailDefinition.fromJson(e))?.toList() ?? [];
    return _favoritesCache.toList();
  }

  @override
  Future addToFavorites(CocktailDefinition cocktailDefinition) async {
    _favoritesCache.add(cocktailDefinition);
    return storage.setValue(_key, _favoritesCache);
  }

  @override
  Future removeFromFavorites(String id) async {
    _favoritesCache.removeWhere((element) => element.id == id);
    return storage.setValue(_key, _favoritesCache);
  }
}
