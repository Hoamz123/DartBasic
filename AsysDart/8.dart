

import 'dart:async';

import '7.dart';

void main(List<String> args) async {
    StreamController streamController = StreamController<int>.broadcast();   //nghe dc nhieu lan nhung ma ko cache du lieu luc nao nghe thi chi nghe dc thoi diem do thoi ko nge lai dc, nen dl luon la moi nhat

    streamController.sink.add(0);

    streamController.stream
        .transform(trans)
        .listen(print);

    streamController.sink.add(1);
    await delay(sec: 2);
    streamController.sink.add(2);
    await delay(sec: 2);
    streamController.sink.add(3);
    streamController.sink.add(4);
    await delay(sec: 2);
    streamController.sink.add(5);

    

}

var trans = StreamTransformer<int,int>.fromHandlers(
    handleData: (data, sink){
        if(data % 2 == 1){
            sink.add(data);
        }
    },
);