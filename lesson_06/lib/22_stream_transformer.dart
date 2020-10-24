import 'dart:async';
import 'dart:convert';
import 'dart:io';

void main() {
  final iterable = Iterable.generate(20); //  single  sync iterable
  final stream = Stream.fromIterable(iterable).asBroadcastStream(); //  single async iterable

//  StreamTransformer transformer;
//  final newStream = stream.transform(transformer);
//  newStream.listen((event) {});

  final transformedStream = stream.transform(StreamTransformer.fromHandlers(handleData: (event, eventSink) async {
    if (event > 10 && event < 15){
      eventSink.add(event);
    }
  }));

  stream.listen((event) => print('Этот элемент из исходного стрима $event'));
  transformedStream.listen((event) => print('Этот элемент из нового стрима $event'));
}

///
/// todo: uncomment it
///
void readFile() {
  final file = File('file.txt');
  Stream<List<int>> inputStream = file.openRead();

  inputStream
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()) // Convert stream to individual lines.
      .listen((String line) {
    // Process results.
    print('$line: ${line.length} bytes');
  }, onDone: () {
    print('File is now closed.');
  }, onError: (e) {
    print(e.toString());
  });
}
