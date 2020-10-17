// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Cocktail> _$cocktailSerializer = new _$CocktailSerializer();

class _$CocktailSerializer implements StructuredSerializer<Cocktail> {
  @override
  final Iterable<Type> types = const [Cocktail, _$Cocktail];
  @override
  final String wireName = 'Cocktail';

  @override
  Iterable<Object> serialize(Serializers serializers, Cocktail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'idDrink',
      serializers.serialize(object.idDrink,
          specifiedType: const FullType(String)),
      'strDrink',
      serializers.serialize(object.strDrink,
          specifiedType: const FullType(String)),
      'strCategory',
      serializers.serialize(object.strCategory,
          specifiedType: const FullType(String)),
      'strAlcoholic',
      serializers.serialize(object.strAlcoholic,
          specifiedType: const FullType(String)),
      'strGlass',
      serializers.serialize(object.strGlass,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Cocktail deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CocktailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'idDrink':
          result.idDrink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strDrink':
          result.strDrink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strCategory':
          result.strCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strAlcoholic':
          result.strAlcoholic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strGlass':
          result.strGlass = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Cocktail extends Cocktail {
  @override
  final String idDrink;
  @override
  final String strDrink;
  @override
  final String strCategory;
  @override
  final String strAlcoholic;
  @override
  final String strGlass;

  factory _$Cocktail([void Function(CocktailBuilder) updates]) =>
      (new CocktailBuilder()..update(updates)).build();

  _$Cocktail._(
      {this.idDrink,
      this.strDrink,
      this.strCategory,
      this.strAlcoholic,
      this.strGlass})
      : super._() {
    if (idDrink == null) {
      throw new BuiltValueNullFieldError('Cocktail', 'idDrink');
    }
    if (strDrink == null) {
      throw new BuiltValueNullFieldError('Cocktail', 'strDrink');
    }
    if (strCategory == null) {
      throw new BuiltValueNullFieldError('Cocktail', 'strCategory');
    }
    if (strAlcoholic == null) {
      throw new BuiltValueNullFieldError('Cocktail', 'strAlcoholic');
    }
    if (strGlass == null) {
      throw new BuiltValueNullFieldError('Cocktail', 'strGlass');
    }
  }

  @override
  Cocktail rebuild(void Function(CocktailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CocktailBuilder toBuilder() => new CocktailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Cocktail &&
        idDrink == other.idDrink &&
        strDrink == other.strDrink &&
        strCategory == other.strCategory &&
        strAlcoholic == other.strAlcoholic &&
        strGlass == other.strGlass;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, idDrink.hashCode), strDrink.hashCode),
                strCategory.hashCode),
            strAlcoholic.hashCode),
        strGlass.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Cocktail')
          ..add('idDrink', idDrink)
          ..add('strDrink', strDrink)
          ..add('strCategory', strCategory)
          ..add('strAlcoholic', strAlcoholic)
          ..add('strGlass', strGlass))
        .toString();
  }
}

class CocktailBuilder implements Builder<Cocktail, CocktailBuilder> {
  _$Cocktail _$v;

  String _idDrink;
  String get idDrink => _$this._idDrink;
  set idDrink(String idDrink) => _$this._idDrink = idDrink;

  String _strDrink;
  String get strDrink => _$this._strDrink;
  set strDrink(String strDrink) => _$this._strDrink = strDrink;

  String _strCategory;
  String get strCategory => _$this._strCategory;
  set strCategory(String strCategory) => _$this._strCategory = strCategory;

  String _strAlcoholic;
  String get strAlcoholic => _$this._strAlcoholic;
  set strAlcoholic(String strAlcoholic) => _$this._strAlcoholic = strAlcoholic;

  String _strGlass;
  String get strGlass => _$this._strGlass;
  set strGlass(String strGlass) => _$this._strGlass = strGlass;

  CocktailBuilder();

  CocktailBuilder get _$this {
    if (_$v != null) {
      _idDrink = _$v.idDrink;
      _strDrink = _$v.strDrink;
      _strCategory = _$v.strCategory;
      _strAlcoholic = _$v.strAlcoholic;
      _strGlass = _$v.strGlass;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Cocktail other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Cocktail;
  }

  @override
  void update(void Function(CocktailBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Cocktail build() {
    final _$result = _$v ??
        new _$Cocktail._(
            idDrink: idDrink,
            strDrink: strDrink,
            strCategory: strCategory,
            strAlcoholic: strAlcoholic,
            strGlass: strGlass);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
