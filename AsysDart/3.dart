


import 'exception/LearnException.dart';

Future<void> main(List<String> args) async {
    
    final name = await getName();//doi name
    try{
        final len = await calculateLength(name);
        print(len);
    }catch(e){
        print(e);
    }
    print("end");
}   

Future<String> getName() {
    return Future.delayed(const Duration(seconds: 1),(){
        return "hwahwahwahwa";
    });
}

Future<int> calculateLength(String value){
    if(value.length < 6){
        throw Learnexception("short");
    }
    return Future.delayed(const Duration(seconds: 3),() => value.length);
}