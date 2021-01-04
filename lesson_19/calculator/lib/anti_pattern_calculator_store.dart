import 'package:mobx/mobx.dart';

part 'anti_pattern_calculator_store.g.dart';

class AntiPatternCalculatorStore extends _BaseCalculatorStore
    with _$AntiPatternCalculatorStore {}

abstract class _BaseCalculatorStore with Store {
  @observable
  int firstNumber = 0;

  @observable
  int secondNumber = 0;

  @computed
  int get result => firstNumber + secondNumber;

  @action
  void setFirstNumber(int value) {
    assert(value != null);

    firstNumber = value;
  }

  @action
  void setSecondNumber(int value) {
    assert(value != null);

    secondNumber = value;
  }
}
