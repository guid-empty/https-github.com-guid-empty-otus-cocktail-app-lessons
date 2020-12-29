import 'dart:io';
import 'dart:isolate';

///
/// Этот класс мы будем использовать для упаковки наших данных в другой изолят
///
class Data {
  final String message;

  Data(this.message);
}

void main() async {
  ReceivePort receivePort = ReceivePort();

  stdout.writeln('Создадим новый Isolate и передадим аргумент в entry point');
  await Isolate.spawn(someSoHeavyAndLongTask, receivePort.sendPort);

  final sourceData = Data('test message');
  stdout.writeln('data hash is ${sourceData.hashCode}');

  ///
  /// Для получения данных из нового созданного изолята создаем подписку
  /// на получение новых dynamic данных.
  ///
  receivePort.listen((dynamic receivedData) {
    if (receivedData is SendPort) {
      SendPort sendPortOfNewIsolate = receivedData;
      sendPortOfNewIsolate.send(sourceData);
    } else if (receivedData is Data) {
      stdout.writeln('data from new isolate : $receivedData');
      stdout.writeln('data hash is ${receivedData.hashCode}');
      stdout.writeln('sourceData and receivedData is ${sourceData == receivedData ? '' : 'not'} equal');
    }
  });
}

///
/// Представим, что это очень длительная или ресурсоемкая задача, которую стоит
/// выполнить не затрагивая UI Isolate
///
void someSoHeavyAndLongTask(SendPort sendPortOfOldIsolate) {
  ReceivePort receivePort = ReceivePort();

  ///
  /// Получили инстанс типа Data и его же отправляем обратно
  ///
  receivePort.listen((dynamic receivedData) {
    if (receivedData is Data) {
      stdout.writeln('data from Main Isolate: $receivedData');
      stdout.writeln('data hash is ${receivedData.hashCode}');
      sendPortOfOldIsolate.send(receivedData);
    }
  });

  sendPortOfOldIsolate.send(receivePort.sendPort);
}
