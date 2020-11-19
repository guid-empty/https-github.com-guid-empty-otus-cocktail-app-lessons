import 'dart:io';
import 'dart:isolate';
import 'dart:math';
import 'dart:typed_data';

void main(List<dynamic> args) async {
  ReceivePort receivePort = ReceivePort();

  stdout.writeln('Создадим новый Isolate и передадим аргумент в entry point');
  final isolate = await Isolate.spawn(someSoHeavyAndLongTask, receivePort.sendPort);

  final withTransferableTypedData = (args?.length ?? 0) > 0;
  stdout.writeln('current test: withTransferableTypedData is $withTransferableTypedData');

  final sourceData = prepareData(withTransferableTypedData);

  ///
  /// Начало теста
  ///
  final Stopwatch watch = Stopwatch();
  watch.start();

  ///
  /// Для получения данных из нового созданного изолята создаем подписку
  /// на получение новых dynamic данных.
  ///
  receivePort.listen((dynamic receivedData) {
    if (receivedData is SendPort) {
      SendPort sendPortOfNewIsolate = receivedData;

      ///
      /// Здесь передаем наш подготовленный массив данных другому изоляту
      ///
      sendPortOfNewIsolate.send(sourceData);
    } else if (receivedData == 'kill') {
      ///
      /// Завершаем тест
      ///
      watch.stop();
      stdout.writeln('elapsed ${watch.elapsedMicroseconds}');
      isolate.kill(priority: Isolate.immediate);
      exit(0);
    }
  });
}

dynamic prepareData(bool withTransferableTypedData) {
  var random = Random();
  var randomNumbers = <int>[];
  randomNumbers.clear();

  for (var j = 0; j < 1e8; j++) {
    randomNumbers.add(random.nextInt(100));
  }

  if (withTransferableTypedData) {
    final transferable = TransferableTypedData.fromList([Int32List.fromList(randomNumbers)]);
    return transferable;
  } else {
    return randomNumbers;
  }
}

///
/// Представим, что это очень длительная или ресурсоемкая задача, которую стоит
/// выполнить не затрагивая UI Isolate
///
void someSoHeavyAndLongTask(SendPort sendPortOfOldIsolate) {
  ReceivePort receivePort = ReceivePort();

  receivePort.listen((dynamic receivedData) {
    ///
    /// Здесь получаем наш подготовленный большой массив данных,
    /// но получить его мы можем в следующих состояниях
    /// в виде копии данных или в виде того же набора данных TransferableTypedData
    ///
    if (receivedData is TransferableTypedData) {
      stdout.writeln(receivedData.materialize().asInt32List().length);
    } else if (receivedData is List<int>) {
      stdout.writeln(receivedData.length);
    }
    sendPortOfOldIsolate.send('kill');
  });

  sendPortOfOldIsolate.send(receivePort.sendPort);
}
