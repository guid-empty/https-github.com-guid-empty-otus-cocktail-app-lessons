import 'dart:isolate';

///
/// DartEssentials Example
/// Демонстрация загрузки всех ядер на вашем компе в зависимости от максимальной
/// загрузки Dart VM
///
main() {
  int counter = 0;

  ReceivePort receivePort = new ReceivePort();

  receivePort.listen((msg) {
    if (msg is SendPort) {
      msg.send(counter++);
    } else {
      print(msg);
    }
  });

  for (var i = 0; i < 6; i++) {
    Isolate.spawn(runInIsolate, receivePort.sendPort);
  }
}

runInIsolate(SendPort sendPort) {
  ReceivePort receivePort = new ReceivePort();
  sendPort.send(receivePort.sendPort);

  receivePort.listen((msg) {
    var k = 0;
    var max = (5 - msg) * 100000000; 
    for (var i = 0; i < max; ++i) {
        i = ++i - 1;
        k = i;
    }
    sendPort.send("I received: $msg and calculated $k");
  });
}
