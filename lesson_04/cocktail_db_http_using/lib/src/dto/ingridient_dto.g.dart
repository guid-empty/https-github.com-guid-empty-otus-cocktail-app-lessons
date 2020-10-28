// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingridient_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IngridientDto> _$ingridientDtoSerializer =
    new _$IngridientDtoSerializer();

class _$IngridientDtoSerializer implements StructuredSerializer<IngridientDto> {
  @override
  final Iterable<Type> types = const [IngridientDto, _$IngridientDto];
  @override
  final String wireName = 'IngridientDto';

  @override
  Iterable<Object> serialize(Serializers serializers, IngridientDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'idIngredient',
      serializers.serialize(object.idIngredient,
          specifiedType: const FullType(String)),
      'strIngredient',
      serializers.serialize(object.strIngredient,
          specifiedType: const FullType(String)),
      'strDescription',
      serializers.serialize(object.strDescription,
          specifiedType: const FullType(String)),
      'strType',
      serializers.serialize(object.strType,
          specifiedType: const FullType(String)),
      'strAlcohol',
      serializers.serialize(object.strAlcohol,
          specifiedType: const FullType(String)),
    ];
    if (object.strABV != null) {
      result
        ..add('strABV')
        ..add(serializers.serialize(object.strABV,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  IngridientDto deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IngridientDtoBuilder();

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
        case 'strABV':
          result.strABV = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$IngridientDto extends IngridientDto {
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
  @override
  final String strABV;

  factory _$IngridientDto([void Function(IngridientDtoBuilder) updates]) =>
      (new IngridientDtoBuilder()..update(updates)).build();

  _$IngridientDto._(
      {this.idIngredient,
      this.strIngredient,
      this.strDescription,
      this.strType,
      this.strAlcohol,
      this.strABV})
      : super._() {
    if (idIngredient == null) {
      throw new BuiltValueNullFieldError('IngridientDto', 'idIngredient');
    }
    if (strIngredient == null) {
      throw new BuiltValueNullFieldError('IngridientDto', 'strIngredient');
    }
    if (strDescription == null) {
      throw new BuiltValueNullFieldError('IngridientDto', 'strDescription');
    }
    if (strType == null) {
      throw new BuiltValueNullFieldError('IngridientDto', 'strType');
    }
    if (strAlcohol == null) {
      throw new BuiltValueNullFieldError('IngridientDto', 'strAlcohol');
    }
  }

  @override
  IngridientDto rebuild(void Function(IngridientDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngridientDtoBuilder toBuilder() => new IngridientDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngridientDto &&
        idIngredient == other.idIngredient &&
        strIngredient == other.strIngredient &&
        strDescription == other.strDescription &&
        strType == other.strType &&
        strAlcohol == other.strAlcohol &&
        strABV == other.strABV;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, idIngredient.hashCode), strIngredient.hashCode),
                    strDescription.hashCode),
                strType.hashCode),
            strAlcohol.hashCode),
        strABV.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IngridientDto')
          ..add('idIngredient', idIngredient)
          ..add('strIngredient', strIngredient)
          ..add('strDescription', strDescription)
          ..add('strType', strType)
          ..add('strAlcohol', strAlcohol)
          ..add('strABV', strABV))
        .toString();
  }
}

class IngridientDtoBuilder
    implements Builder<IngridientDto, IngridientDtoBuilder> {
  _$IngridientDto _$v;

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

  String _strABV;
  String get strABV => _$this._strABV;
  set strABV(String strABV) => _$this._strABV = strABV;

  IngridientDtoBuilder();

  IngridientDtoBuilder get _$this {
    if (_$v != null) {
      _idIngredient = _$v.idIngredient;
      _strIngredient = _$v.strIngredient;
      _strDescription = _$v.strDescription;
      _strType = _$v.strType;
      _strAlcohol = _$v.strAlcohol;
      _strABV = _$v.strABV;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngridientDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$IngridientDto;
  }

  @override
  void update(void Function(IngridientDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IngridientDto build() {
    final _$result = _$v ??
        new _$IngridientDto._(
            idIngredient: idIngredient,
            strIngredient: strIngredient,
            strDescription: strDescription,
            strType: strType,
            strAlcohol: strAlcohol,
            strABV: strABV);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
