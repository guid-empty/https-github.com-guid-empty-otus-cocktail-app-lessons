///
/// wrk --connections 400 --threads 1 --duration 30s http://localhost:4040
///
import 'dart:io';

import 'dart:async';
import 'dart:developer';
import 'dart:isolate';
import 'package:meta/meta.dart';

Future main() async {
  var server = await HttpServer.bind(
    InternetAddress.loopbackIPv4,
    4040,
  );
  stdout.writeln('Listening on localhost:${server.port}');

  server.listen((HttpRequest request) async {
    final result = await compute(processRequest, null);
    request.response.write(result);
    await request.response.close();
  });
}

String processRequest(dynamic data) {
  sleep(Duration(milliseconds: 200));
  stdout.writeln('processed request');
  return 'Hello, world!';
}

typedef ComputeCallback<Q, R> = FutureOr<R> Function(Q message);

/// The dart:io implementation of [isolate.compute].
Future<R> compute<Q, R>(ComputeCallback<Q, R> callback, Q message, {String debugLabel}) async {
  debugLabel ??= 'compute';

  final Flow flow = Flow.begin();
  Timeline.startSync('$debugLabel: start', flow: flow);
  final ReceivePort resultPort = ReceivePort();
  final ReceivePort exitPort = ReceivePort();
  final ReceivePort errorPort = ReceivePort();
  Timeline.finishSync();
  final Isolate isolate = await Isolate.spawn<_IsolateConfiguration<Q, FutureOr<R>>>(
    _spawn,
    _IsolateConfiguration<Q, FutureOr<R>>(
      callback,
      message,
      resultPort.sendPort,
      debugLabel,
      flow.id,
    ),
    errorsAreFatal: true,
    onExit: exitPort.sendPort,
    onError: errorPort.sendPort,
  );
  final Completer<R> result = Completer<R>();
  errorPort.listen((dynamic errorData) {
    assert(errorData is List<dynamic>);
    assert(errorData.length == 2);
    final Exception exception = Exception(errorData[0]);
    final StackTrace stack = StackTrace.fromString(errorData[1] as String);
    if (result.isCompleted) {
      Zone.current.handleUncaughtError(exception, stack);
    } else {
      result.completeError(exception, stack);
    }
  });
  exitPort.listen((dynamic exitData) {
    if (!result.isCompleted) {
      result.completeError(Exception('Isolate exited without result or error.'));
    }
  });
  resultPort.listen((dynamic resultData) {
    assert(resultData == null || resultData is R);
    if (!result.isCompleted) result.complete(resultData as R);
  });
  await result.future;
  Timeline.startSync('$debugLabel: end', flow: Flow.end(flow.id));
  resultPort.close();
  errorPort.close();
  isolate.kill();
  Timeline.finishSync();
  return result.future;
}

@immutable
class _IsolateConfiguration<Q, R> {
  const _IsolateConfiguration(
    this.callback,
    this.message,
    this.resultPort,
    this.debugLabel,
    this.flowId,
  );
  final ComputeCallback<Q, R> callback;
  final Q message;
  final SendPort resultPort;
  final String debugLabel;
  final int flowId;

  FutureOr<R> apply() => callback(message);
}

Future<void> _spawn<Q, R>(_IsolateConfiguration<Q, FutureOr<R>> configuration) async {
  final R result = await Timeline.timeSync(
    configuration.debugLabel,
    () async {
      final FutureOr<R> applicationResult = await configuration.apply();
      return await applicationResult;
    },
    flow: Flow.step(configuration.flowId),
  );
  Timeline.timeSync(
    '${configuration.debugLabel}: returning result',
    () {
      configuration.resultPort.send(result);
    },
    flow: Flow.step(configuration.flowId),
  );
}
