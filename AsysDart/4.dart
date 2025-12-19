
//stream
import 'dart:async';
import 'exception/LearnException.dart';

Future<void> main(List<String> args) async {
    // Stream controller = getNumbers();
    // controller.listen((it) => print(it));
    
    // await for(final number in getNumbers()){
    //     print(number);
    // }

    // try{
    //     await for(final name in getNames()){
    //         print(name);
    //     }
    // }catch(e){
    //     print(e);
    // }

    final stream = getX().asyncExpand(getCharacters);
    stream.listen(print);
}   

Stream<int> getNumbers() async*{
    for(var i = 0;i<10;i++){
        await Future.delayed(
            const Duration(seconds: 1)
        );
        yield i;
    }
}

Stream<String> getNames() async*{
    await Future.delayed(const Duration(seconds: 1));
    yield 'hwa';
    throw Learnexception("Something wrong");
}
 

Stream<String> getCharacters(String formart) async*{
    for(int i=0;i<formart.length;i++){
        await Future.delayed(const Duration(seconds: 1));
        yield formart[i];
    }
}

Stream<String> getX() async*{
    await Future.delayed(const Duration(seconds: 1));
    yield 'John';
    await Future.delayed(const Duration(seconds: 1));
    yield 'Doe';
} 