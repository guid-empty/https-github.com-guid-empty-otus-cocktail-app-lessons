import 'package:currency/stores/currencies_store.dart';
import 'package:currency/widgets/currencies_store_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class CurrencyListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CurrenciesStoreProvider(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Rates"),
          actions: [
            Observer(
              builder: (context) {
                final store = context.watch<CurrenciesStore>();

                if (store.areCurrenciesLoading.value) return Container();

                return IconButton(
                  icon: Icon(Icons.refresh),
                  onPressed: () => store.loadCurrencies(),
                );
              },
            )
          ],
        ),
        body: _Content(),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = context.watch<CurrenciesStore>();
    final currencies = store.currencies;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: store.averageRate != null
              ? Text(
                  "Average: ${store.averageRate.toStringAsFixed(4)} ₽",
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.end,
                )
              : Container(),
        ),
        Divider(height: 0),
        Expanded(
          child: ListView.separated(
            itemCount: currencies.length,
            itemBuilder: (BuildContext context, int index) {
              final currency = currencies[index];

              return ListTile(
                title: Text(currency.quote),
                trailing: Text("${currency.rate.toStringAsFixed(4)} ₽"),
              );
            },
            separatorBuilder: (BuildContext context, _) => Divider(height: 0),
          ),
        ),
      ],
    );
  }
}
