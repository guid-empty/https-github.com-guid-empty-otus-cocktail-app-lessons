import 'dart:io';
import 'dart:isolate';

const String taskCompletedMessage = 'completed';

void main() async {
  ReceivePort receivePort = ReceivePort();

  stdout.writeln('Создадим новый Isolate и передадим аргумент в entry point');
  Isolate isolate = await Isolate.spawn(someSoHeavyAndLongTask, receivePort.sendPort);

  stdout.writeln('Здесь начинается выполнение главного изолята');
  for (int progress = 0; progress < 10; progress++) {
    sleep(Duration(seconds: 1));
    stdout.writeln('Значение progress в главном изоляте : $progress');
  }

  ///
  /// Для получения данных из нового созданного изолята создаем подписку
  /// на получение новых dynamic данных.
  ///
  receivePort.listen((dynamic receivedData) {
    stdout.writeln('Получены новые данные из нового изолята : $receivedData');

    ///
    /// Если мы получили сообщение
    ///
    if (receivedData is String && receivedData.toString().contains(taskCompletedMessage)) {
      stdout.writeln('Получены сообщение $taskCompletedMessage, уничтожим новый изолят');
      isolate.kill(priority: Isolate.immediate);
      isolate = null;
      receivePort.close();
    }
  });
}

///
/// Представим, что это очень длительная или ресурсоемкая задача, которую стоит
/// выполнить не затрагивая UI Isolate
///
void someSoHeavyAndLongTask(SendPort sendPort) {
  stdout.writeln('Новый изолят создан с аргументом : $sendPort');

  for (int progress = 0; progress < 10; progress++) {
    stdout.writeln('Значение progress в новом изоляте : $progress');
    sleep(Duration(seconds: 1));
    sendPort.send(progress);
  }

  sendPort.send(taskCompletedMessage);
  stdout.writeln('task $taskCompletedMessage');
}
