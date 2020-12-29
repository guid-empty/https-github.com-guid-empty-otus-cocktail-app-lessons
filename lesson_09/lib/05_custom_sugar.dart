import 'dart:async';
import 'dart:io';
import 'dart:isolate';

void main() async {
  stdout.writeln('Текущий isolate: ${Isolate.current.debugName}');
  SendPort mainToIsolateStream = await compute(
    isolatedMethod: someSoHeavyAndLongTask,
    messageCallBack: (data) => stdout.writeln('Коллбек : $data'),
    debugName: 'Debug isolate',
  );

  mainToIsolateStream.send('Сообщение 1 из \'${Isolate.current.debugName}\' изолята');
  mainToIsolateStream.send('Сообщение 2 из \'${Isolate.current.debugName}\' изолята');
  mainToIsolateStream.send('kill');
}

typedef IsolateMessageCallback = void Function(dynamic arg);

typedef IsolateMethod = void Function(SendPort sendPort);

///
/// Представим, что мы разработчики Flutter Framework и для рутинных операций
/// нам потребовался метод для быстрого создания изолята.
/// Давайте создадим такой вспомогательный метод.
///
Future<SendPort> compute({
  IsolateMethod isolatedMethod,
  IsolateMessageCallback messageCallBack,
  String debugName,
}) async {
  Completer completer = Completer<SendPort>();
  ReceivePort isolateToMainStream = ReceivePort();

  isolateToMainStream.listen((data) {
    if (data is SendPort) {
      ///
      /// По контракту взаимодействия мы считаем, что наш метод в изоляте должен
      /// предоставить нам Send Port для отправки ему команд.
      /// Ожидаем появление такого сообщения.
      ///
      SendPort messageFromMainToDebugIsolateSendPort = data;
      completer.complete(messageFromMainToDebugIsolateSendPort);
    } else {
      ///
      /// Здесь выполняем коллбек на перехват любых сообщений
      ///
      messageCallBack(data);
    }
  });

  await Isolate.spawn(isolatedMethod, isolateToMainStream.sendPort, debugName: debugName);
  return completer.future;
}

///
/// Этот метод будет использован для запуска в качестве изолята
///
void someSoHeavyAndLongTask(SendPort sendPort) {
  stdout.writeln('Здесь начинается выполнение нового изолята [${Isolate.current.debugName}]');

  ReceivePort receivePort = ReceivePort();

  ///
  /// Отправим принимающей стороне send порт, через который мы сможем в этом методе
  /// получать сообщения от главного изолята
  ///
  sendPort.send(receivePort.sendPort);

  receivePort.listen((data) {
    stdout.writeln('Получены новые данные из главного изолята : $data');
    if (data == 'kill') {
      sendPort.send('Но почему вы меня убили ???!');
      exit(0);
    }
  });

  ///
  /// Здесь моя длительная работа
  ///
  for (int progress = 0; progress < 5; progress++) {
    stdout.writeln('Значение progress в новом изоляте : $progress');
    sleep(Duration(seconds: 1));
  }

  sendPort.send('Это сообщение 1 из \'${Isolate.current.debugName}\' изолята');
  sendPort.send('Это сообщение 2 из \'${Isolate.current.debugName}\' изолята');
  sendPort.send('Это сообщение 3 из \'${Isolate.current.debugName}\' изолята');
}
