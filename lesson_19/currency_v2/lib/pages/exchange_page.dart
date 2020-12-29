import 'package:currency/stores/exchange_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class ExchangePage extends StatelessWidget {
  final String selectedCurrencyQuote;

  const ExchangePage({
    Key key,
    @required this.selectedCurrencyQuote,
  })  : assert(selectedCurrencyQuote != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<ExchangeStore>(
      create: (_) {
        // TODO Создать новый экземпляр ExchangeStore
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Exchange"),
        ),
        body: _Content(),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO добавить Observer

    final store = context.watch<ExchangeStore>();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  autofocus: true,
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(filled: true),
                  onChanged: (value) {
                    // TODO передать в store новое введенное значение
                  },
                ),
              ),
              const SizedBox(width: 4),
              Text(
                "RUB",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.arrow_forward_outlined),
              ),
              Expanded(
                child: Text(
                  // TODO выводить результат конвертации
                  "${store.selectedCurrencyQuote}",
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            // TODO выводить актуальный курс обмена для выбранной валюты
            "Rate: ₽",
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
