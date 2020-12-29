import 'package:mobx/mobx.dart';

part 'calculator_store.g.dart';

class _CalculatorStoreImpl extends CalculatorStore with _$_CalculatorStoreImpl {
}

abstract class CalculatorStore with Store {
  factory CalculatorStore.create() => _CalculatorStoreImpl();

  CalculatorStore();

  final firstNumber = Observable(0);

  final secondNumber = Observable(0);

  @computed
  int get result => firstNumber.value + secondNumber.value;

  @action
  void setFirstNumber(int value) {
    assert(value != null);

    firstNumber.value = value;
  }

  @action
  void setSecondNumber(int value) {
    assert(value != null);

    secondNumber.value = value;
  }
}
