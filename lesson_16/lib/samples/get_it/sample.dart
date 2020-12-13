import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class ServiceB {
  ServiceC serviceC;
}

class ServiceC {}

class Service {}

class ServiceA extends Service {}

@injectable
@prod
class Config {
  final String baseUrl;

  Config(this.baseUrl);
}

@injectable
class ApiClient {
  @factoryMethod
  factory ApiClient.create(String url) => ApiClient(url);

  ApiClient(this.url);

  final String url;


}

@module
abstract class RegisterModule {

  final Service service = ServiceA();

  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}


