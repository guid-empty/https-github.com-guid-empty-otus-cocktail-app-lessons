import 'package:currency/stores/currencies_store.dart';
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

part 'exchange_store.g.dart';

abstract class ExchangeStore with Store {
  // TODO Добавить приватное свойство CurrenciesStore, чтобы внутри ExchangeStore можно было отслеживать изменения курсов
  final String selectedCurrencyQuote;

  ExchangeStore(this.selectedCurrencyQuote)
      :
        assert(selectedCurrencyQuote != null);

  factory ExchangeStore.create({
    @required String selectedCurrencyQuote,
  }) {
    return _ExchangeStore(selectedCurrencyQuote);
  }

  // TODO Добавить Observable для отслеживания введенной суммы

  // TODO Добавить Computed для отслеживания текущего курса выбранной валюты

  // TODO Добавить Computed для результата конвертации

  // TODO Добавить Action для обновления введенной суммы
}

class _ExchangeStore extends ExchangeStore with _$_ExchangeStore {
  _ExchangeStore(
    String _selectedCurrencyQuote,
  ) : super(_selectedCurrencyQuote);
}
