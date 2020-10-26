import 'package:flutter/widgets.dart';

typedef ValueWidgetBuilder<T> = Widget Function(BuildContext context, T value);

class FutureBuilderWrapper<T> extends StatelessWidget {
  const FutureBuilderWrapper(
      {Key key,
        @required this.future,
        @required this.inProgressBuilder,
        @required this.onErrorBuilder,
        @required this.onDataBuilder,
        this.initialData})
      : assert(future != null, 'future is required'),
        assert(inProgressBuilder != null, 'inProgressBuilder is required'),
        assert(onErrorBuilder != null, 'onErrorBuilder is required'),
        assert(onDataBuilder != null, 'onDataBuilder is required'),
        super(key: key);

  final WidgetBuilder inProgressBuilder;

  final ValueWidgetBuilder onErrorBuilder;

  final ValueWidgetBuilder<T> onDataBuilder;

  final Future<T> future;

  final T initialData;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<T>(
      initialData: initialData,
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return onErrorBuilder(context, snapshot.error);
        } else if (snapshot.hasData) {
          return onDataBuilder(context, snapshot.data);
        }
        return inProgressBuilder(context);
      },
    );
  }
}