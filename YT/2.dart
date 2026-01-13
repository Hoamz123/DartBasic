

import 'dart:async';

import '../AsysDart/7.dart';

Future<void> main() async {
    
    //single- -sucription stream
    // Stream stream = getNumbers();
    // stream.listen(print);

    //convert to broadcast stream
    Stream stream = getNumbers().asBroadcastStream();

    //co the handle nhieu listener
    stream.take(5).listen(print,onDone: () => print("done..."));
    
    stream.map((it) => it * 10).listen(print);

}

Future<String> getStr(){
    return Future.delayed(const Duration(seconds: 1),(){
        return "hi";
    });
}

Stream<int> getNumbers() async*{
    for(int i=1;i<=10;i++){
        await Future.delayed(const Duration(seconds: 1));
        yield i;
    }
}