import 'dart:io';

Future main() async {
  var server = await HttpServer.bind(
    InternetAddress.loopbackIPv4,
    4040,
  );
  stdout.writeln('Listening on localhost:${server.port}');

  await for (HttpRequest request in server) {
    final result = processRequest();
    request.response.write(result);
    await request.response.close();
  }
}

String processRequest() {
  sleep(Duration(milliseconds: 200));
  stdout.writeln('processed request');
  return 'Hello, world!';
}
