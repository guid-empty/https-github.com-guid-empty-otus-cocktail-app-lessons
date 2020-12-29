import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class SimpleAppState with _$SimpleAppState {
  static const init = SimpleAppState(
    count: 0,
    remainder: 0,
  );

  const factory SimpleAppState({
    int count,
    int remainder,
  }) = _SimpleAppState;
}
