
import 'dart:async';

void main(List<String> args) async {
    StreamController streamController = StreamController<int>();
    
    streamController.stream
        .transform(getEvenNumber)
        .listen(print);

    streamController.sink.add(1);
    streamController.sink.add(2);
    streamController.sink.add(3);
    streamController.sink.add(4);
}


void trans() async {
    var stream = StreamController<String>();
    //listen
    stream.stream
        .transform(transformer)
        .listen(print);

    //add data
    //dung sink de dua data vao stream
    stream.sink.add('hwa');
    await delay(sec: 2);
    stream.sink.add('hoamz');
    await delay(sec: 4);
    stream.sink.add('hoa');
}

//filter even number
final getEvenNumber = StreamTransformer<int,int>.fromHandlers(
    handleData: (data, sink) {
        if(data % 2 == 0){
            sink.add(data);
        }
    },
);

//transformer
final transformer = StreamTransformer<String,String>.fromHandlers(
    handleData: (data, sink){
        sink.add(data.toUpperCase());
    },
);

Future<void> delay({required int sec}) async{
    await Future.delayed(Duration(seconds: sec));
}