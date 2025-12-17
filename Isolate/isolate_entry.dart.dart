
import 'dart:isolate';

import 'Message.dart';

void isolate(Map<String,dynamic> data){
    SendPort sendPort = data["sendPort"] as SendPort;

    Message msg = Message(content: "Hello person.name, you are person.age years old!");
    sendPort.send(msg);
}