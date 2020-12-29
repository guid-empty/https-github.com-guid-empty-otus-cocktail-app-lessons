import 'package:flutter/foundation.dart';

class Currency {
  final String quote;
  final double rate;

  Currency({@required this.quote, @required this.rate})
      : assert(quote != null),
        assert(rate != null);
}
