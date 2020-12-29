import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_model.freezed.dart';

@freezed
abstract class ContentViewModel with _$ContentViewModel {
  const factory ContentViewModel({
    String count,
    String remainder,
  }) = _ContentViewModel;
}
