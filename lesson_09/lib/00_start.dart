import 'dart:async';
import 'dart:io';
import 'dart:isolate';

void main() async {

  stdout.writeln('Создадим новый Isolate и передадим аргумент в entry point');
  Isolate isolate = await Isolate.spawn(someSoHeavyAndLongTask, 0);

  stdout.writeln('Здесь начинается выполнение главного изолята');
  new Timer.periodic(Duration(seconds: 1), (timer) {
    stdout.writeln('Значение таймер в главном изоляте : ${timer.tick}');
  });

  ///
  /// Ожидаем нажатия в консоли и после этого убиваем наш новый изолят
  ///
  await stdin.first;

  ///
  /// Убиваем изолят
  ///
  isolate.kill(priority: Isolate.immediate);
  isolate = null;
}

///
/// Представим, что это очень длительная или ресурсоемкая задача, которую стоит
/// выполнить не затрагивая UI Isolate
///
void someSoHeavyAndLongTask(int argToUseForCalculation) {
  stdout.writeln('Новый изолят создан с аргументом : $argToUseForCalculation');

  new Timer.periodic(Duration(seconds: 1), (timer) {
    stdout.writeln('Значение таймер в новом изоляте : ${timer.tick}');
  });
}
