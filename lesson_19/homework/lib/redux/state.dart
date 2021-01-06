import 'package:freezed_annotation/freezed_annotation.dart';
import 'favorites/state.dart';
part 'state.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  static const initState = AppState(
    favoriteState: FavoritesState.initState,
  );

  const factory AppState({
    FavoritesState favoriteState,
  }) = _AppState;
}