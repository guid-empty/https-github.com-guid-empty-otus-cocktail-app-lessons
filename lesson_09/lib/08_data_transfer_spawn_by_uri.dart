import 'dart:isolate';

///
/// Illegal argument in isolate message : (object is a regular Dart Instance)
///
void main() async {
  ReceivePort receivePort = ReceivePort();

  await Isolate.spawnUri(Uri.parse('./08_isolate_worker.dart'), [], receivePort.sendPort);

  ///
  /// comment this
  ///
  //  final sourceData = Data('test message');

  ///
  /// uncomment this
  ///
  final sourceData = 'test message';

  print('data hash is ${sourceData.hashCode}');

  receivePort.listen((dynamic receivedData) {
    if (receivedData is SendPort) {
      SendPort sendPortOfNewIsolate = receivedData;
      sendPortOfNewIsolate.send(sourceData);
    } else {
      print('Data from new isolate : $receivedData');
      print('data hash is ${receivedData.hashCode}');
      if (receivedData is Data) {
        print('sourceData and receivedData is ${sourceData == receivedData ? '' : 'not'} equal');
      }
    }
  });
}

class Data {
  final String message;

  Data(this.message);
}
