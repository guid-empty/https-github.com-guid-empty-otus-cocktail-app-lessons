// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ContentViewModelTearOff {
  const _$ContentViewModelTearOff();

// ignore: unused_element
  _ContentViewModel call({String count, String remainder}) {
    return _ContentViewModel(
      count: count,
      remainder: remainder,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ContentViewModel = _$ContentViewModelTearOff();

/// @nodoc
mixin _$ContentViewModel {
  String get count;
  String get remainder;

  $ContentViewModelCopyWith<ContentViewModel> get copyWith;
}

/// @nodoc
abstract class $ContentViewModelCopyWith<$Res> {
  factory $ContentViewModelCopyWith(
          ContentViewModel value, $Res Function(ContentViewModel) then) =
      _$ContentViewModelCopyWithImpl<$Res>;
  $Res call({String count, String remainder});
}

/// @nodoc
class _$ContentViewModelCopyWithImpl<$Res>
    implements $ContentViewModelCopyWith<$Res> {
  _$ContentViewModelCopyWithImpl(this._value, this._then);

  final ContentViewModel _value;
  // ignore: unused_field
  final $Res Function(ContentViewModel) _then;

  @override
  $Res call({
    Object count = freezed,
    Object remainder = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as String,
      remainder: remainder == freezed ? _value.remainder : remainder as String,
    ));
  }
}

/// @nodoc
abstract class _$ContentViewModelCopyWith<$Res>
    implements $ContentViewModelCopyWith<$Res> {
  factory _$ContentViewModelCopyWith(
          _ContentViewModel value, $Res Function(_ContentViewModel) then) =
      __$ContentViewModelCopyWithImpl<$Res>;
  @override
  $Res call({String count, String remainder});
}

/// @nodoc
class __$ContentViewModelCopyWithImpl<$Res>
    extends _$ContentViewModelCopyWithImpl<$Res>
    implements _$ContentViewModelCopyWith<$Res> {
  __$ContentViewModelCopyWithImpl(
      _ContentViewModel _value, $Res Function(_ContentViewModel) _then)
      : super(_value, (v) => _then(v as _ContentViewModel));

  @override
  _ContentViewModel get _value => super._value as _ContentViewModel;

  @override
  $Res call({
    Object count = freezed,
    Object remainder = freezed,
  }) {
    return _then(_ContentViewModel(
      count: count == freezed ? _value.count : count as String,
      remainder: remainder == freezed ? _value.remainder : remainder as String,
    ));
  }
}

/// @nodoc
class _$_ContentViewModel implements _ContentViewModel {
  const _$_ContentViewModel({this.count, this.remainder});

  @override
  final String count;
  @override
  final String remainder;

  @override
  String toString() {
    return 'ContentViewModel(count: $count, remainder: $remainder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContentViewModel &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.remainder, remainder) ||
                const DeepCollectionEquality()
                    .equals(other.remainder, remainder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(remainder);

  @override
  _$ContentViewModelCopyWith<_ContentViewModel> get copyWith =>
      __$ContentViewModelCopyWithImpl<_ContentViewModel>(this, _$identity);
}

abstract class _ContentViewModel implements ContentViewModel {
  const factory _ContentViewModel({String count, String remainder}) =
      _$_ContentViewModel;

  @override
  String get count;
  @override
  String get remainder;
  @override
  _$ContentViewModelCopyWith<_ContentViewModel> get copyWith;
}
