

import 'dart:isolate';

void main(List<String> args) async {
    A();
}

void A() async{
    ReceivePort receivePort = ReceivePort();
    await Isolate.spawn(heavyTask,[receivePort.sendPort,1000000]);
    receivePort.listen((result){
        print(result);
        receivePort.close();
    });
}

void heavyTask(List<dynamic> args){
    SendPort sendPort = args[0] as SendPort;
    int n = args[1] as int;
    int sum = 0;
    for(int i=0;i<=n;i++){
        sum += i;
    }
    sendPort.send(sum);
}