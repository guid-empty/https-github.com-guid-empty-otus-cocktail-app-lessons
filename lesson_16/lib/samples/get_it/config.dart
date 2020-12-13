import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'config.config.dart';

final serviceLocator = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: false, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(serviceLocator,environment: Environment.dev);


void reset(){
  serviceLocator.reset();
  configureDependencies();
}