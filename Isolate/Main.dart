import 'dart:isolate';
import 'isolate_entry.dart.dart';

Future<void> main(List<String> args) async {
    ReceivePort receivePort = ReceivePort();

    await Isolate.spawn(isolate, {"sendPort": receivePort.sendPort});

    receivePort.listen((message) {
        print("Main received: $message");
        receivePort.close();
    });
}