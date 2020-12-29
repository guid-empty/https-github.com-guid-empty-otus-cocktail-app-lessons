import 'package:redux/redux.dart';

class LogMiddleware<T> extends MiddlewareClass<T> {
  @override
  dynamic call(Store<T> store, dynamic action, NextDispatcher next) {
    print(action.runtimeType);

    return next(action);
  }
}
