import 'package:currency/pages/currency_list_page.dart';
import 'package:currency/services/currency_rates_service.dart';
import 'package:currency/widgets/currencies_store_provider.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

void main() {
  mainContext.config = ReactiveConfig.main.clone(
    writePolicy: ReactiveWritePolicy.always,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => CurrencyRatesService(),
      child: CurrenciesStoreProvider(
        child: MaterialApp(
          title: 'Currency',
          theme: ThemeData(
            primarySwatch: Colors.deepPurple,
          ),
          home: CurrencyListPage(),
        ),
      ),
    );
  }
}
