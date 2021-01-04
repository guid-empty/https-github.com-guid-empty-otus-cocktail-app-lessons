import 'dart:async';

import 'package:currency/models/currency.dart';
import 'package:currency/services/currency_rates_service.dart';
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

part 'currencies_store.g.dart';

abstract class CurrenciesStore with Store {
  final CurrencyRatesService _ratesService;
  Timer _timer;

  CurrenciesStore(this._ratesService) : assert(_ratesService != null) {
    _timer = Timer.periodic(
      const Duration(seconds: 5),
      (_) => loadCurrencies(),
    );
  }

  factory CurrenciesStore.create({
    @required CurrencyRatesService ratesService,
  }) {
    return _CurrenciesStoreImpl(ratesService);
  }

  Future<void> init() {
    return loadCurrencies();
  }

  dispose() {
    _timer?.cancel();
  }

  final ObservableList<Currency> currencies = ObservableList();

  @computed
  double get averageRate {
    if (currencies.isEmpty) return null;

    final ratesSum = currencies.fold(
      0,
      (previousValue, element) => previousValue += element.rate,
    );
    final currenciesCount = currencies.length;

    return ratesSum / currenciesCount;
  }

  @action
  Future<void> loadCurrencies() async {
    final rateData = await _ratesService.getCurrencyRates();

    currencies.clear();
    currencies.addAll(
      rateData.entries.map(
        (entry) => Currency(quote: entry.key, rate: entry.value),
      ),
    );
  }
}

class _CurrenciesStoreImpl extends CurrenciesStore with _$_CurrenciesStoreImpl {
  _CurrenciesStoreImpl(CurrencyRatesService ratesService) : super(ratesService);
}
