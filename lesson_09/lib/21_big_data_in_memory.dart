import 'dart:io';
import 'dart:isolate';

const String taskCompletedMessage = 'completed';

///
/// Супер большой объект
///
class BigData {
  final String _message;

  /// uncomment this
  ///
  ///  Если хотим отключить вебинар, то можно немного подождать до последнего момента
  ///
  ///  BigData() : _message = 'A' * 1e8.toInt();

  BigData() : _message = 'A' * 1e6.toInt();
}

void main() async {
  ReceivePort receivePort = ReceivePort();

  stdout.writeln('Создадим новый Isolate и передадим аргумент в entry point');
  Isolate isolate = await Isolate.spawn(
    someSoHeavyAndLongTask,
    receivePort.sendPort,
    debugName: 'BugData Isolate',
  );

  receivePort.listen((dynamic receivedData) {
    if (receivedData is String && receivedData.toString().contains(taskCompletedMessage)) {
      isolate.kill(priority: Isolate.immediate);
      isolate = null;
      receivePort.close();
    }
  });
}

void someSoHeavyAndLongTask(SendPort sendPort) {
  final superCache = <BigData>[];

  for (int progress = 0; progress < 500; progress++) {
    stdout.writeln('Значение progress в новом изоляте : $progress');
    sleep(Duration(seconds: 1));
    superCache.add(BigData());
    sendPort.send(progress);
  }

  sendPort.send(taskCompletedMessage);
  stdout.writeln('task $taskCompletedMessage');
}
