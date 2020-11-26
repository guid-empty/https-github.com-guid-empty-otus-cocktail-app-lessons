import 'package:flutter/material.dart';
import 'package:lesson/persistence/file/file_repository.dart';
import 'package:lesson/persistence/hive/hive_lazy_repository.dart';
import 'package:lesson/persistence/hive/hive_repository.dart';
import 'package:lesson/persistence/secure_storage/provider.dart';
import 'package:lesson/persistence/shared_preference/shared_preference.dart';
import 'package:lesson/persistence/sqlite/sqlite_repository.dart';
import 'package:lesson/ui/root_page.dart';


void main() {
  runApp(MaterialApp(
    home: RootPage(SQLiteRepository()..setUp()),
  ));
}
