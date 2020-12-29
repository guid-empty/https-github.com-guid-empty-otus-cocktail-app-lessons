import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:lesson_17/app/core/models.dart';

@immutable
class CategoriesState {}

class CategoriesInitial extends CategoriesState {}

class CategoriesLoadInProgress extends CategoriesState {}

class CategoriesLoadSuccess extends CategoriesState {
  CategoriesLoadSuccess({this.categories, this.selectedCategory});

  final Iterable<CocktailCategory> categories;

  final CocktailCategory selectedCategory;

  factory CategoriesLoadSuccess.fromMap(Map<String, dynamic> map) {
    return new CategoriesLoadSuccess(
      categories: map['categories'] as Iterable<CocktailCategory>,
      selectedCategory: map['selectedCategory'] as CocktailCategory,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'categories': this.categories,
      'selectedCategory': this.selectedCategory,
    } as Map<String, dynamic>;
  }

  CategoriesLoadSuccess copyWith({
    Iterable<CocktailCategory> categories,
    CocktailCategory selectedCategory,
  }) {
    if ((categories == null || identical(categories, this.categories)) &&
        (selectedCategory == null ||
            identical(selectedCategory, this.selectedCategory))) {
      return this;
    }

    return new CategoriesLoadSuccess(
      categories: categories ?? this.categories,
      selectedCategory: selectedCategory ?? this.selectedCategory,
    );
  }

// CategoriesLoadSuccess copyWith({
  //   UnmodifiableListView<CocktailCategory> categories,
  //   CocktailCategory selectedCategory,
  // }) {
  //   if ((categories == null || identical(categories, this.categories)) &&
  //       (selectedCategory == null ||
  //           identical(selectedCategory, this.selectedCategory))) {
  //     return this;
  //   }
  //   return CategoriesLoadSuccess(
  //     categories: categories ?? this.categories,
  //     selectedCategory: selectedCategory ?? this.selectedCategory,
  //   );
  // }
}

class CategoriesLoadFailure extends CategoriesState {
  CategoriesLoadFailure(this.errorMessage);

  final String errorMessage;
}
