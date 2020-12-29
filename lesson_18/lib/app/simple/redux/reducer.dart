import 'package:redux/redux.dart';

import 'action.dart';
import 'state.dart';

final simpleAppStateReducer = combineReducers<SimpleAppState>([
  TypedReducer<SimpleAppState, IncrementCountAction>(_incrementCount),
  TypedReducer<SimpleAppState, DecrementCountAction>(_decrementCount),
]);

SimpleAppState _incrementCount(
    SimpleAppState state, IncrementCountAction action) {
  final newCount = state.count + 1;

  return state.copyWith(
    count: newCount,
    remainder: newCount % 3,
  );
}

SimpleAppState _decrementCount(
    SimpleAppState state, DecrementCountAction action) {
  final newCount = state.count - 1;

  return state.copyWith(
    count: newCount,
    remainder: newCount % 3,
  );
}
