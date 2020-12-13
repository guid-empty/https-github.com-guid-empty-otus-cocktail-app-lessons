import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:lesson_16/app/storage/persistent_storage.dart';
import 'package:path_provider/path_provider.dart';

@Injectable(as:Storage )
class FileStorage extends Storage {
  File _file;

  @override
  Future init() async {
    final directory = await getApplicationDocumentsDirectory();
    _file = File(directory.path + '/sample.json');
    if (!_file.existsSync()) {
      _file.create();
      _file.writeAsString('{}');
    }
    return null;
  }

  @override
  Future setValue(String key, value) {
    final _current =
        (json.decode(_file.readAsStringSync()) as Map<String, dynamic>);
    _current[key] = value;
    return _file.writeAsString(json.encode(_current));
  }

  @override
  Future getValue(String key) async {
    final _current =
        (json.decode(_file.readAsStringSync()) as Map<String, dynamic>);
    return _current[key];
  }
}
