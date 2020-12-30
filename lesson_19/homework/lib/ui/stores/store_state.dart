import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_state.freezed.dart';

@freezed
abstract class StoreState with _$StoreState {
  const factory StoreState.error(String reason) = StoreStateFailed;
  const factory StoreState.loading() = StoreStateLoading;
  const factory StoreState.loaded() = StoreStateLoaded;
}
