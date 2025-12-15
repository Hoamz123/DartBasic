import 'dart:isolate';
import 'Person.dart';
import 'isolate_entry.dart.dart';

Future<void> main(List<String> args) async {
    ReceivePort receivePort = ReceivePort();
    // Person p = Person(name: "Hoamz",age:  23);

    await Isolate.spawn(isolate, {"sendPort": receivePort.sendPort});

    receivePort.listen((message) {
        print("Main received: $message");
        receivePort.close();
    });
}