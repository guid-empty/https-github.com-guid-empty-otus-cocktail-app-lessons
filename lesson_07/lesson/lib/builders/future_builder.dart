import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FutureBuilderSample extends StatefulWidget {
  @override
  _FutureBuilderSampleState createState() => _FutureBuilderSampleState();
}

class _FutureBuilderSampleState extends State<FutureBuilderSample> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FutureBuilderSample'),
        actions: [
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                setState(() {});
              })
        ],
      ),
      body: FutureBuilder(
        //initialData: 1,
        future: Future<int>.delayed(Duration(seconds: 2)).then((value) {
          return Random().nextInt(100);
        }),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.none) {}

          if (snapshot.connectionState == ConnectionState.waiting) {}

          if (snapshot.connectionState == ConnectionState.active) {}

          if (snapshot.connectionState == ConnectionState.done) {}

          if (snapshot.hasError) {
            return Center(
                child: Text(
              snapshot.error.toString(),
              style: TextStyle(color: Colors.red),
            ));
          }

          if (snapshot.hasData) {
            return Center(child: Text(snapshot.toString()));
          }
          print('connectionState: ${snapshot.connectionState}');
          print('data:${snapshot.data}');
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

typedef ValueWidgetBuilder<T> = Widget Function(BuildContext context, T value);

class FutureBuilderWrapper<T> extends StatelessWidget {
  const FutureBuilderWrapper(
      {Key key,
      @required this.future,
      @required this.inProgressBuilder,
      @required this.noDataBuilder,
      @required this.onErrorBuilder,
      @required this.onDataBuilder,
      this.initialData})
      : assert(future != null, 'future is required'),
        assert(inProgressBuilder != null, 'inProgressBuilder is required'),
        assert(noDataBuilder != null, 'noDataBuilder is required'),
        assert(onErrorBuilder != null, 'onErrorBuilder is required'),
        assert(onDataBuilder != null, 'onDataBuilder is required'),
        super(key: key);

  final WidgetBuilder inProgressBuilder;

  final WidgetBuilder noDataBuilder;

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
