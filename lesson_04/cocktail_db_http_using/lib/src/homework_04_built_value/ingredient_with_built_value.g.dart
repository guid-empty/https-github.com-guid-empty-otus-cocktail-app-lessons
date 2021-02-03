// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_with_built_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IngredientWithBuiltValue> _$ingredientWithBuiltValueSerializer =
    new _$IngredientWithBuiltValueSerializer();

class _$IngredientWithBuiltValueSerializer
    implements StructuredSerializer<IngredientWithBuiltValue> {
  @override
  final Iterable<Type> types = const [
    IngredientWithBuiltValue,
    _$IngredientWithBuiltValue
  ];
  @override
  final String wireName = 'IngredientWithBuiltValue';

  @override
  Iterable<Object> serialize(
      Serializers serializers, IngredientWithBuiltValue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'idIngredient',
      serializers.serialize(object.idIngredient,
          specifiedType: const FullType(String)),
    ];
    if (object.strIngredient != null) {
      result
        ..add('strIngredient')
        ..add(serializers.serialize(object.strIngredient,
            specifiedType: const FullType(String)));
    }
    if (object.strDescription != null) {
      result
        ..add('strDescription')
        ..add(serializers.serialize(object.strDescription,
            specifiedType: const FullType(String)));
    }
    if (object.strType != null) {
      result
        ..add('strType')
        ..add(serializers.serialize(object.strType,
            specifiedType: const FullType(String)));
    }
    if (object.strAlcohol != null) {
      result
        ..add('strAlcohol')
        ..add(serializers.serialize(object.strAlcohol,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  IngredientWithBuiltValue deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IngredientWithBuiltValueBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'idIngredient':
          result.idIngredient = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strIngredient':
          result.strIngredient = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strDescription':
          result.strDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strType':
          result.strType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strAlcohol':
          result.strAlcohol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$IngredientWithBuiltValue extends IngredientWithBuiltValue {
  @override
  final String idIngredient;
  @override
  final String strIngredient;
  @override
  final String strDescription;
  @override
  final String strType;
  @override
  final String strAlcohol;

  factory _$IngredientWithBuiltValue(
          [void Function(IngredientWithBuiltValueBuilder) updates]) =>
      (new IngredientWithBuiltValueBuilder()..update(updates)).build();

  _$IngredientWithBuiltValue._(
      {this.idIngredient,
      this.strIngredient,
      this.strDescription,
      this.strType,
      this.strAlcohol})
      : super._() {
    if (idIngredient == null) {
      throw new BuiltValueNullFieldError(
          'IngredientWithBuiltValue', 'idIngredient');
    }
  }

  @override
  IngredientWithBuiltValue rebuild(
          void Function(IngredientWithBuiltValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngredientWithBuiltValueBuilder toBuilder() =>
      new IngredientWithBuiltValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngredientWithBuiltValue &&
        idIngredient == other.idIngredient &&
        strIngredient == other.strIngredient &&
        strDescription == other.strDescription &&
        strType == other.strType &&
        strAlcohol == other.strAlcohol;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, idIngredient.hashCode), strIngredient.hashCode),
                strDescription.hashCode),
            strType.hashCode),
        strAlcohol.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IngredientWithBuiltValue')
          ..add('idIngredient', idIngredient)
          ..add('strIngredient', strIngredient)
          ..add('strDescription', strDescription)
          ..add('strType', strType)
          ..add('strAlcohol', strAlcohol))
        .toString();
  }
}

class IngredientWithBuiltValueBuilder
    implements
        Builder<IngredientWithBuiltValue, IngredientWithBuiltValueBuilder> {
  _$IngredientWithBuiltValue _$v;

  String _idIngredient;
  String get idIngredient => _$this._idIngredient;
  set idIngredient(String idIngredient) => _$this._idIngredient = idIngredient;

  String _strIngredient;
  String get strIngredient => _$this._strIngredient;
  set strIngredient(String strIngredient) =>
      _$this._strIngredient = strIngredient;

  String _strDescription;
  String get strDescription => _$this._strDescription;
  set strDescription(String strDescription) =>
      _$this._strDescription = strDescription;

  String _strType;
  String get strType => _$this._strType;
  set strType(String strType) => _$this._strType = strType;

  String _strAlcohol;
  String get strAlcohol => _$this._strAlcohol;
  set strAlcohol(String strAlcohol) => _$this._strAlcohol = strAlcohol;

  IngredientWithBuiltValueBuilder();

  IngredientWithBuiltValueBuilder get _$this {
    if (_$v != null) {
      _idIngredient = _$v.idIngredient;
      _strIngredient = _$v.strIngredient;
      _strDescription = _$v.strDescription;
      _strType = _$v.strType;
      _strAlcohol = _$v.strAlcohol;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngredientWithBuiltValue other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$IngredientWithBuiltValue;
  }

  @override
  void update(void Function(IngredientWithBuiltValueBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IngredientWithBuiltValue build() {
    final _$result = _$v ??
        new _$IngredientWithBuiltValue._(
            idIngredient: idIngredient,
            strIngredient: strIngredient,
            strDescription: strDescription,
            strType: strType,
            strAlcohol: strAlcohol);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
