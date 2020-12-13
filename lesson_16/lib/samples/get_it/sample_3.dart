




import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void configureDependencies(){
  sl.registerFactory<Service>(() => ServiceA(),instanceName: 'a');
  sl.registerFactory<Service>(() => ServiceB(),instanceName: 'b');
  sl.registerFactoryParam((param1, param2) => ServiceA());
}


abstract class Service {

}

class ServiceA  extends Service{

}

class ServiceB extends Service {

}