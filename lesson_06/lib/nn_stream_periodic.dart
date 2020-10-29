Future<void> main() async {
  print('> Start');

  final fileData = Stream.periodic(Duration(seconds: 1), (int byte) => byte);
  await for (final data in fileData) {
    print('Current data is $data');
  }

  //  fileData.listen((data) {print(data); });
  print('> End');
}
