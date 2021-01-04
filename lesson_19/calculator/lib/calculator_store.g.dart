// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculator_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$_CalculatorStoreImpl on CalculatorStore, Store {
  Computed<int> _$resultComputed;

  @override
  int get result => (_$resultComputed ??=
          Computed<int>(() => super.result, name: 'CalculatorStore.result'))
      .value;

  final _$CalculatorStoreActionController =
      ActionController(name: 'CalculatorStore');

  @override
  void setFirstNumber(int value) {
    final _$actionInfo = _$CalculatorStoreActionController.startAction(
        name: 'CalculatorStore.setFirstNumber');
    try {
      return super.setFirstNumber(value);
    } finally {
      _$CalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSecondNumber(int value) {
    final _$actionInfo = _$CalculatorStoreActionController.startAction(
        name: 'CalculatorStore.setSecondNumber');
    try {
      return super.setSecondNumber(value);
    } finally {
      _$CalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
result: ${result}
    ''';
  }
}
