import 'package:currency/models/currency.dart';
import 'package:currency/services/currency_rates_service.dart';
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

part 'currencies_store.g.dart';

abstract class CurrenciesStore with Store {
  final CurrencyRatesService _ratesService;

  CurrenciesStore(this._ratesService) : assert(_ratesService != null);

  factory CurrenciesStore.create({
    @required CurrencyRatesService ratesService,
  }) {
    return _CurrenciesStoreImpl(ratesService);
  }

  Future<void> init() {
    return loadCurrencies();
  }

  final ObservableList<Currency> currencies = ObservableList();

  final Observable<bool> areCurrenciesLoading = Observable(false);

  @computed
  double get averageRate {
    if (currencies.isEmpty) return null;

    final ratesSum = currencies.fold(
        0, (previousValue, element) => previousValue += element.rate);
    final currenciesCount = currencies.length;

    return ratesSum / currenciesCount;
  }

  Future<void> loadCurrencies() async {
    areCurrenciesLoading.value = true;

    final rateData = await _ratesService.getCurrencyRates();

    currencies.clear();
    currencies.addAll(
      rateData.entries.map(
        (entry) => Currency(quote: entry.key, rate: entry.value),
      ),
    );

    areCurrenciesLoading.value = false;
  }
}

class _CurrenciesStoreImpl extends CurrenciesStore with _$_CurrenciesStoreImpl {
  _CurrenciesStoreImpl(CurrencyRatesService ratesService) : super(ratesService);
}
