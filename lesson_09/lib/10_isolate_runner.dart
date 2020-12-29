import 'dart:io';
import 'dart:isolate';

import 'package:isolate/isolate.dart';

void main() async {
  stdout.writeln('Текущий изолят ${Isolate.current.debugName}');

  final Runner runner = await IsolateRunner.spawn();
  final output = await runner.run<String, int>(someSoHeavyAndLongTask, 5);

  // Выполнение не паралельное, а последовательное
  // final output = await Future.wait([
  //   runner.run<String, int>(someSoHeavyAndLongTask, 3),
  //   runner.run<String, int>(someSoHeavyAndLongTask, 5),
  // ]);

  stdout.writeln(output);

  await runner.close();
}

///
/// Представим, что это очень длительная или ресурсоемкая задача, которую стоит
/// выполнить не затрагивая UI Isolate
///
String someSoHeavyAndLongTask(int argToUseForCalculation) {
  stdout.writeln('Текущий изолят ${Isolate.current.debugName}');
  stdout.writeln('Новый изолят создан с аргументом : $argToUseForCalculation');

  for (int progress = 0; progress < argToUseForCalculation; progress++) {
    stdout.writeln('Значение progress в новом изоляте : $progress');
    sleep(Duration(seconds: 1));
  }

  return 'It\'s all ok!';
}
