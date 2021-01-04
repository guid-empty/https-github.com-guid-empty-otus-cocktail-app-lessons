// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currencies_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$_CurrenciesStoreImpl on CurrenciesStore, Store {
  Computed<double> _$averageRateComputed;

  @override
  double get averageRate =>
      (_$averageRateComputed ??= Computed<double>(() => super.averageRate,
              name: 'CurrenciesStore.averageRate'))
          .value;

  @override
  String toString() {
    return '''
averageRate: ${averageRate}
    ''';
  }
}
