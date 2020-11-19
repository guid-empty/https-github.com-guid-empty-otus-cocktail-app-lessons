import 'dart:io';
import 'dart:isolate';

void main(List<String> args, SendPort sendPortOfMainIsolate) {
  ReceivePort receivePort = ReceivePort();

  receivePort.listen((dynamic receivedData) {
    stdout.writeln('data is : $receivedData');
    stdout.writeln('data hash is ${receivedData.hashCode}');

    sendPortOfMainIsolate.send(receivedData);
  });

  sendPortOfMainIsolate.send(receivePort.sendPort);
}