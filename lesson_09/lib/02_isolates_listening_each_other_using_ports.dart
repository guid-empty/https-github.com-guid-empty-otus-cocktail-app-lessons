import 'dart:io';
import 'dart:isolate';

const String taskCompletedMessage = 'completed';

///
/// Коммуникация между изолятами, используя ReceivePort & SendPort
///
void main() async {
  ReceivePort receivePort = ReceivePort();

  stdout.writeln('Создадим новый Isolate и передадим аргумент в entry point');
  Isolate isolate = await Isolate.spawn(someSoHeavyAndLongTask, receivePort.sendPort);

  stdout.writeln('Здесь начинается выполнение главного изолята [${Isolate.current.debugName}]');

  for (int progress = 0; progress < 10; progress++) {
    sleep(Duration(seconds: 1));
    stdout.writeln('Значение progress в главном изоляте : $progress');
  }

  ///
  /// Для получения данных из нового созданного изолята создаем подписку
  /// на получение новых dynamic данных.
  ///
  receivePort.listen((dynamic receivedData) {
    if (receivedData is SendPort) {
      ///
      /// Мы получили из нового изолята Send Port - теперь
      /// можем отправлять сообщения, а не только их принимать
      ///
      SendPort sendPortOfNewIsolate = receivedData;
      sendPortOfNewIsolate.send('Привет Новый Изолят!');
    } else if (receivedData is String && receivedData.toString().contains(taskCompletedMessage)) {
      stdout.writeln('Получены сообщение $taskCompletedMessage, уничтожим новый изолят');
      isolate.kill(priority: Isolate.immediate);
      isolate = null;
      receivePort.close();
    } else {
      stdout.writeln('Получены новые данные из нового изолята : $receivedData');
    }
  });
}

///
/// Представим, что это очень длительная или ресурсоемкая задача, которую стоит
/// выполнить не затрагивая UI Isolate
///
void someSoHeavyAndLongTask(SendPort sendPort) {
  stdout.writeln('Здесь начинается выполнение нового изолята [${Isolate.current.debugName}]');
  stdout.writeln('Новый изолят создан с аргументом : $sendPort');

  ///
  /// Внутри нового изолята мы создаем свой порт для приема сообщений.
  /// Но для того, чтобы начать принимать от другой стороны сообщения,
  /// мы должны расшарить send port
  ///
  ReceivePort receivePort = ReceivePort();
  receivePort.listen((dynamic receivedData) {
    stdout.writeln('Получены новые данные из главного изолята : $receivedData');
    stdout.writeln('task $taskCompletedMessage');

    sendPort.send(taskCompletedMessage);
  });

  for (int progress = 0; progress < 10; progress++) {
    stdout.writeln('Значение progress в новом изоляте : $progress');
    sleep(Duration(seconds: 1));
    sendPort.send(progress);
  }

  sendPort.send(receivePort.sendPort);
}
