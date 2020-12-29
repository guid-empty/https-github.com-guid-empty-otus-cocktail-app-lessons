import 'package:currency/stores/currencies_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class CurrenciesStoreProvider extends StatelessWidget {
  final Widget child;

  const CurrenciesStoreProvider({Key key, @required this.child})
      : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<CurrenciesStore>(
      create: (context) => CurrenciesStore.create(ratesService: context.read()),
      dispose: (_, value) => value.dispose(),
      child: _StoreInitializer(
        child: child,
      ),
    );
  }
}

class _StoreInitializer extends StatefulWidget {
  final Widget child;

  const _StoreInitializer({Key key, @required this.child}) : super(key: key);

  @override
  __StoreInitializerState createState() => __StoreInitializerState();
}

class __StoreInitializerState extends State<_StoreInitializer> {
  Future<void> _initFuture;

  @override
  void initState() {
    super.initState();

    final store = context.read<CurrenciesStore>();
    _initFuture = store.init();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return widget.child;
        }

        return Container(
          color: Colors.white,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
