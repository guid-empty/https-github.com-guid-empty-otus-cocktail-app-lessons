import 'dart:async';
import 'package:flutter/foundation.dart';

// пример реализации Bloc
// E - event type
// S - state type
abstract class BaseBloc<E,S>  {

  BaseBloc() {
    _inputController.stream.listen(onEvent);
    if (initialState != null){
      _outputController.add(initialState);
    }
  }

  final _inputController = StreamController<E>();

  final _outputController = StreamController<S>.broadcast();

  Sink<E> get sink => _inputController.sink;

  Stream<S> get stream => _outputController.stream;

  S _state;
  S get state => _state ?? initialState;

  S get initialState;

  @protected
  void onEvent(E event);

  @protected
  void updateState(S state){
    _state = state;
    _outputController.add(state);
  }

  @mustCallSuper
  void close() {
    _outputController.close();
    _inputController.close();
  }

}