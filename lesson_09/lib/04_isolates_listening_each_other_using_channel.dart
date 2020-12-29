import 'dart:io';
import 'dart:isolate';

import 'package:stream_channel/isolate_channel.dart';

///
/// Двунаправленное взаимодействие используя Isolate Channel
///
void main() async {
  ReceivePort receivePort = ReceivePort();
  IsolateChannel channel = IsolateChannel.connectReceive(receivePort);

  stdout.writeln('Создадим новый Isolate и передадим аргумент в entry point');
  Isolate isolate = await Isolate.spawn(someSoHeavyAndLongTask, receivePort.sendPort);

  ///
  /// Для получения данных из нового созданного изолята создаем подписку
  /// на получение новых dynamic данных.
  ///
  channel.stream.listen((receivedData) {
    stdout.writeln('Получены новые данные из нового изолята : $receivedData');

    if (receivedData == 'hi') {
      channel.sink.add('how are you?');
    } else if ((receivedData as String).contains('bye')) {
      channel.sink.add('have to kill you...');
      stdout.writeln('have to kill you...');

      channel.sink.close();
      isolate.kill(priority: Isolate.immediate);
    }
  });
}

///
/// Представим, что это очень длительная или ресурсоемкая задача, которую стоит
/// выполнить не затрагивая UI Isolate
///
void someSoHeavyAndLongTask(SendPort sendPortOfOldIsolate) {
  stdout.writeln('Здесь начинается выполнение нового изолята [${Isolate.current.debugName}]');

  IsolateChannel channel = IsolateChannel.connectSend(sendPortOfOldIsolate);
  channel.stream.listen((data) {
    stdout.writeln('Получены новые данные из главного изолята : $data');

    if (data == 'how are you?') {
      channel.sink.add("fine. see you later. bye. don\'t kill me...");
    }
  });

  channel.sink.add("hi");
}
