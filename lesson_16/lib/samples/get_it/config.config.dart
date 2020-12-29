// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:lesson_16/app/core/src/repository/favorites_local_repository.dart';
import 'package:lesson_16/app/repository/favorites_repository.dart';
import 'package:lesson_16/app/core/src/storage/file_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:lesson_16/samples/get_it/sample.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:lesson_16/app/storage/persistent_storage.dart';

/// Environment names
const _prod = 'prod';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<ApiClient>(() => ApiClient.create(get<String>()));
  gh.factory<Config>(() => Config(get<String>()), registerFor: {_prod});
  gh.factory<Service>(() => registerModule.service);
  gh.factory<ServiceB>(() => ServiceB());
  gh.factoryAsync<SharedPreferences>(() => registerModule.prefs);
  gh.factory<Storage>(() => FileStorage());
  gh.factory<FavoritesRepository>(
      () => FavoritesLocalRepository(get<Storage>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
