// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anti_pattern_calculator_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AntiPatternCalculatorStore on _BaseCalculatorStore, Store {
  Computed<int> _$resultComputed;

  @override
  int get result => (_$resultComputed ??= Computed<int>(() => super.result,
          name: '_BaseCalculatorStore.result'))
      .value;

  final _$firstNumberAtom = Atom(name: '_BaseCalculatorStore.firstNumber');

  @override
  int get firstNumber {
    _$firstNumberAtom.reportRead();
    return super.firstNumber;
  }

  @override
  set firstNumber(int value) {
    _$firstNumberAtom.reportWrite(value, super.firstNumber, () {
      super.firstNumber = value;
    });
  }

  final _$secondNumberAtom = Atom(name: '_BaseCalculatorStore.secondNumber');

  @override
  int get secondNumber {
    _$secondNumberAtom.reportRead();
    return super.secondNumber;
  }

  @override
  set secondNumber(int value) {
    _$secondNumberAtom.reportWrite(value, super.secondNumber, () {
      super.secondNumber = value;
    });
  }

  final _$_BaseCalculatorStoreActionController =
      ActionController(name: '_BaseCalculatorStore');

  @override
  void setFirstNumber(int value) {
    final _$actionInfo = _$_BaseCalculatorStoreActionController.startAction(
        name: '_BaseCalculatorStore.setFirstNumber');
    try {
      return super.setFirstNumber(value);
    } finally {
      _$_BaseCalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSecondNumber(int value) {
    final _$actionInfo = _$_BaseCalculatorStoreActionController.startAction(
        name: '_BaseCalculatorStore.setSecondNumber');
    try {
      return super.setSecondNumber(value);
    } finally {
      _$_BaseCalculatorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
firstNumber: ${firstNumber},
secondNumber: ${secondNumber},
result: ${result}
    ''';
  }
}
