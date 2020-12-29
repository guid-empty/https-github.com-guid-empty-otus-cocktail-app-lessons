// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CategoriesViewModelTearOff {
  const _$CategoriesViewModelTearOff();

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Success success(
      {Iterable<CocktailCategory> categories = const <CocktailCategory>[],
      CocktailCategory selectedCategory}) {
    return Success(
      categories: categories,
      selectedCategory: selectedCategory,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CategoriesViewModel = _$CategoriesViewModelTearOff();

/// @nodoc
mixin _$CategoriesViewModel {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult success(Iterable<CocktailCategory> categories,
            CocktailCategory selectedCategory),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult success(Iterable<CocktailCategory> categories,
        CocktailCategory selectedCategory),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(Loading value),
    @required TResult success(Success value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(Loading value),
    TResult success(Success value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CategoriesViewModelCopyWith<$Res> {
  factory $CategoriesViewModelCopyWith(
          CategoriesViewModel value, $Res Function(CategoriesViewModel) then) =
      _$CategoriesViewModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoriesViewModelCopyWithImpl<$Res>
    implements $CategoriesViewModelCopyWith<$Res> {
  _$CategoriesViewModelCopyWithImpl(this._value, this._then);

  final CategoriesViewModel _value;
  // ignore: unused_field
  final $Res Function(CategoriesViewModel) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$CategoriesViewModelCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'CategoriesViewModel.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult success(Iterable<CocktailCategory> categories,
            CocktailCategory selectedCategory),
  }) {
    assert(loading != null);
    assert(success != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult success(Iterable<CocktailCategory> categories,
        CocktailCategory selectedCategory),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(Loading value),
    @required TResult success(Success value),
  }) {
    assert(loading != null);
    assert(success != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(Loading value),
    TResult success(Success value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CategoriesViewModel {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call(
      {Iterable<CocktailCategory> categories,
      CocktailCategory selectedCategory});
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    extends _$CategoriesViewModelCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object categories = freezed,
    Object selectedCategory = freezed,
  }) {
    return _then(Success(
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
class _$Success implements Success {
  const _$Success(
      {this.categories = const <CocktailCategory>[], this.selectedCategory})
      : assert(categories != null);

  @JsonKey(defaultValue: const <CocktailCategory>[])
  @override
  final Iterable<CocktailCategory> categories;
  @override
  final CocktailCategory selectedCategory;

  @override
  String toString() {
    return 'CategoriesViewModel.success(categories: $categories, selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success &&
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
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult success(Iterable<CocktailCategory> categories,
            CocktailCategory selectedCategory),
  }) {
    assert(loading != null);
    assert(success != null);
    return success(categories, selectedCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult success(Iterable<CocktailCategory> categories,
        CocktailCategory selectedCategory),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(categories, selectedCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(Loading value),
    @required TResult success(Success value),
  }) {
    assert(loading != null);
    assert(success != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(Loading value),
    TResult success(Success value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements CategoriesViewModel {
  const factory Success(
      {Iterable<CocktailCategory> categories,
      CocktailCategory selectedCategory}) = _$Success;

  Iterable<CocktailCategory> get categories;
  CocktailCategory get selectedCategory;
  $SuccessCopyWith<Success> get copyWith;
}
