// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CategoriesStateTearOff {
  const _$CategoriesStateTearOff();

// ignore: unused_element
  _CategoriesState call(
      {Iterable<CocktailCategory> categories = const <CocktailCategory>[],
      CocktailCategory selectedCategory}) {
    return _CategoriesState(
      categories: categories,
      selectedCategory: selectedCategory,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CategoriesState = _$CategoriesStateTearOff();

/// @nodoc
mixin _$CategoriesState {
  Iterable<CocktailCategory> get categories;
  CocktailCategory get selectedCategory;

  $CategoriesStateCopyWith<CategoriesState> get copyWith;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res>;
  $Res call(
      {Iterable<CocktailCategory> categories,
      CocktailCategory selectedCategory});
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  final CategoriesState _value;
  // ignore: unused_field
  final $Res Function(CategoriesState) _then;

  @override
  $Res call({
    Object categories = freezed,
    Object selectedCategory = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories as Iterable<CocktailCategory>,
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory as CocktailCategory,
    ));
  }
}

/// @nodoc
abstract class _$CategoriesStateCopyWith<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  factory _$CategoriesStateCopyWith(
          _CategoriesState value, $Res Function(_CategoriesState) then) =
      __$CategoriesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Iterable<CocktailCategory> categories,
      CocktailCategory selectedCategory});
}

/// @nodoc
class __$CategoriesStateCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res>
    implements _$CategoriesStateCopyWith<$Res> {
  __$CategoriesStateCopyWithImpl(
      _CategoriesState _value, $Res Function(_CategoriesState) _then)
      : super(_value, (v) => _then(v as _CategoriesState));

  @override
  _CategoriesState get _value => super._value as _CategoriesState;

  @override
  $Res call({
    Object categories = freezed,
    Object selectedCategory = freezed,
  }) {
    return _then(_CategoriesState(
      categories: categories == freezed
          ? _value.categories
          : categories as Iterable<CocktailCategory>,
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory as CocktailCategory,
    ));
  }
}

/// @nodoc
class _$_CategoriesState implements _CategoriesState {
  const _$_CategoriesState(
      {this.categories = const <CocktailCategory>[], this.selectedCategory})
      : assert(categories != null);

  @JsonKey(defaultValue: const <CocktailCategory>[])
  @override
  final Iterable<CocktailCategory> categories;
  @override
  final CocktailCategory selectedCategory;

  @override
  String toString() {
    return 'CategoriesState(categories: $categories, selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoriesState &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.selectedCategory, selectedCategory) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCategory, selectedCategory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(selectedCategory);

  @override
  _$CategoriesStateCopyWith<_CategoriesState> get copyWith =>
      __$CategoriesStateCopyWithImpl<_CategoriesState>(this, _$identity);
}

abstract class _CategoriesState implements CategoriesState {
  const factory _CategoriesState(
      {Iterable<CocktailCategory> categories,
      CocktailCategory selectedCategory}) = _$_CategoriesState;

  @override
  Iterable<CocktailCategory> get categories;
  @override
  CocktailCategory get selectedCategory;
  @override
  _$CategoriesStateCopyWith<_CategoriesState> get copyWith;
}
