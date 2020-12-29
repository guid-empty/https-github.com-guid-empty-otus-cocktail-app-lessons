import 'dart:math';

import 'package:forex/forex.dart';

class CurrencyRatesService {
  Map<String, double> _data;
  final _random = Random();

  Future<void> _initData() async {
    final actualData = await Forex.fx(
      quoteProvider: QuoteProvider.yahoo,
      base: _rubQuote,
      quotes: _supportedCurrencies.toList(),
    );

    _data = actualData.map(
      (key, value) => MapEntry(
        key.replaceFirst(_rubQuote, ""),
        1 / value.toDouble(),
      ),
    );
  }

  Future<Map<String, double>> getCurrencyRates() async {
    if (_data == null) {
      // Использовать настоящие курсы только в первый раз
      await _initData();
      return _data;
    }

    // Симуляция выполнения запроса по сети
    await Future.delayed(Duration(milliseconds: 500));

    // Генерация фейковых курсов на основе предыдущих значений.
    // Фейковые данные не зависят от времени работы Forex бирж и подходят для обучения.
    _data = _data.map((key, value) => MapEntry(key, _randomizeDouble(value)));
    return _data;
  }

  double _randomizeDouble(double value) {
    final deltaCoef = _random.nextDouble() * 0.005;
    if (deltaCoef == 0) return value;

    final delta = value * deltaCoef;

    final sign = _random.nextInt(2);

    if (sign == 0) {
      return value + delta;
    } else {
      return value - delta;
    }
  }
}

const _rubQuote = 'RUB';
final _supportedCurrencies = [
  'EUR',
  'USD',
  'AUD',
  'AMD',
  'AZN',
  'BWP',
  'NOK',
  'BRL',
  'CAD',
  'CNY',
  'NZD',
  'CZK',
  'DKK',
  'EGP',
  'GHS',
  'GBP',
  'HKD',
  'HUF',
  'ISK',
  'INR',
  'IDR',
  'ILS',
  'JPY',
  'JOD',
  'KZT',
  'KES',
  'KWD',
  'KGS',
  'CHF',
  'MYR',
  'MUR',
  'MXN',
  'MDL',
  'MAD',
  'OMR',
  'PHP',
  'PLN',
  'QAR',
  'SAR',
  'RSD',
  'SGD',
  'ZAR',
  'KRW',
  'LKR',
  'SEK',
  'TWD',
  'TJS',
  'THB',
  'TND',
  'TRY',
  'TMT',
  'UGX',
  'AED',
  'UZS'
];
