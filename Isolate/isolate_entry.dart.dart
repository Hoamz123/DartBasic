
import 'dart:isolate';

import 'Message.dart';

void isolate(Map<String,dynamic> data){
    SendPort sendPort = data["sendPort"] as SendPort;
    // Person person = data["person"] as Person;

    // print("Isolate received: $person");

    Message msg = Message(content: "Hello person.name, you are person.age years old!");
    sendPort.send(msg);
}