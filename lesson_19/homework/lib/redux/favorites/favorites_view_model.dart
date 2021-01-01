import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_view_model.freezed.dart';

@freezed
abstract class FavoritesViewModel with _$FavoritesViewModel {
  const factory FavoritesViewModel.favorite() = Favorite;
  const factory FavoritesViewModel.not() = NotFavorite;
}