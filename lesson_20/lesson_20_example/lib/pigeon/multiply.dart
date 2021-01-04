import 'package:pigeon/pigeon.dart';

class MultiplyRequest {
  int multiplicand;
  int multiplier;
}

class MultiplyResult {
  int result;
}

@HostApi()
abstract class MultiplyApi {
  MultiplyResult multiply(MultiplyRequest request);
}
