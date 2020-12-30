// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cocktail_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CocktailDefinition _$CocktailDefinitionFromJson(Map<String, dynamic> json) {
  return CocktailDefinitionValue.fromJson(json);
}

/// @nodoc
class _$CocktailDefinitionTearOff {
  const _$CocktailDefinitionTearOff();

// ignore: unused_element
  CocktailDefinitionValue call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String drinkThumbUrl,
      @HiveField(3) bool isFavourite}) {
    return CocktailDefinitionValue(
      id: id,
      name: name,
      drinkThumbUrl: drinkThumbUrl,
      isFavourite: isFavourite,
    );
  }

// ignore: unused_element
  CocktailDefinition fromJson(Map<String, Object> json) {
    return CocktailDefinition.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CocktailDefinition = _$CocktailDefinitionTearOff();

/// @nodoc
mixin _$CocktailDefinition {
  @HiveField(0)
  String get id;
  @HiveField(1)
  String get name;
  @HiveField(2)
  String get drinkThumbUrl;
  @HiveField(3)
  bool get isFavourite;

  Map<String, dynamic> toJson();
  $CocktailDefinitionCopyWith<CocktailDefinition> get copyWith;
}

/// @nodoc
abstract class $CocktailDefinitionCopyWith<$Res> {
  factory $CocktailDefinitionCopyWith(
          CocktailDefinition value, $Res Function(CocktailDefinition) then) =
      _$CocktailDefinitionCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String drinkThumbUrl,
      @HiveField(3) bool isFavourite});
}

/// @nodoc
class _$CocktailDefinitionCopyWithImpl<$Res>
    implements $CocktailDefinitionCopyWith<$Res> {
  _$CocktailDefinitionCopyWithImpl(this._value, this._then);

  final CocktailDefinition _value;
  // ignore: unused_field
  final $Res Function(CocktailDefinition) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object drinkThumbUrl = freezed,
    Object isFavourite = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      drinkThumbUrl: drinkThumbUrl == freezed
          ? _value.drinkThumbUrl
          : drinkThumbUrl as String,
      isFavourite:
          isFavourite == freezed ? _value.isFavourite : isFavourite as bool,
    ));
  }
}

/// @nodoc
abstract class $CocktailDefinitionValueCopyWith<$Res>
    implements $CocktailDefinitionCopyWith<$Res> {
  factory $CocktailDefinitionValueCopyWith(CocktailDefinitionValue value,
          $Res Function(CocktailDefinitionValue) then) =
      _$CocktailDefinitionValueCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String drinkThumbUrl,
      @HiveField(3) bool isFavourite});
}

/// @nodoc
class _$CocktailDefinitionValueCopyWithImpl<$Res>
    extends _$CocktailDefinitionCopyWithImpl<$Res>
    implements $CocktailDefinitionValueCopyWith<$Res> {
  _$CocktailDefinitionValueCopyWithImpl(CocktailDefinitionValue _value,
      $Res Function(CocktailDefinitionValue) _then)
      : super(_value, (v) => _then(v as CocktailDefinitionValue));

  @override
  CocktailDefinitionValue get _value => super._value as CocktailDefinitionValue;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object drinkThumbUrl = freezed,
    Object isFavourite = freezed,
  }) {
    return _then(CocktailDefinitionValue(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      drinkThumbUrl: drinkThumbUrl == freezed
          ? _value.drinkThumbUrl
          : drinkThumbUrl as String,
      isFavourite:
          isFavourite == freezed ? _value.isFavourite : isFavourite as bool,
    ));
  }
}

@JsonSerializable()
@HiveType(
    typeId: cocktailDefinitionHiveType,
    adapterName: 'CocktailDefinitionAdapter')

/// @nodoc
class _$CocktailDefinitionValue implements CocktailDefinitionValue {
  const _$CocktailDefinitionValue(
      {@HiveField(0) this.id,
      @HiveField(1) this.name,
      @HiveField(2) this.drinkThumbUrl,
      @HiveField(3) this.isFavourite});

  factory _$CocktailDefinitionValue.fromJson(Map<String, dynamic> json) =>
      _$_$CocktailDefinitionValueFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final String drinkThumbUrl;
  @override
  @HiveField(3)
  final bool isFavourite;

  @override
  String toString() {
    return 'CocktailDefinition(id: $id, name: $name, drinkThumbUrl: $drinkThumbUrl, isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CocktailDefinitionValue &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.drinkThumbUrl, drinkThumbUrl) ||
                const DeepCollectionEquality()
                    .equals(other.drinkThumbUrl, drinkThumbUrl)) &&
            (identical(other.isFavourite, isFavourite) ||
                const DeepCollectionEquality()
                    .equals(other.isFavourite, isFavourite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(drinkThumbUrl) ^
      const DeepCollectionEquality().hash(isFavourite);

  @override
  $CocktailDefinitionValueCopyWith<CocktailDefinitionValue> get copyWith =>
      _$CocktailDefinitionValueCopyWithImpl<CocktailDefinitionValue>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$CocktailDefinitionValueToJson(this);
  }
}

abstract class CocktailDefinitionValue implements CocktailDefinition {
  const factory CocktailDefinitionValue(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String drinkThumbUrl,
      @HiveField(3) bool isFavourite}) = _$CocktailDefinitionValue;

  factory CocktailDefinitionValue.fromJson(Map<String, dynamic> json) =
      _$CocktailDefinitionValue.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get drinkThumbUrl;
  @override
  @HiveField(3)
  bool get isFavourite;
  @override
  $CocktailDefinitionValueCopyWith<CocktailDefinitionValue> get copyWith;
}
