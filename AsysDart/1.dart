

import 'dart:async';

Future<void> main(List<String> args)  async {
    print("Starting...");
    //cai nay doi 2s sau (cho den khi cai lenh await tren kia chay xong thi moi chay)
    // Future.delayed(const Duration(seconds: 2),() => print("OK"));
    // try{
    //     await fakeData();
    // }catch(e){
    //     print("Msg : $e");
    // }
    // print("Ending");

    // fakeData()
    //     .then((it) => print(it))//no van chay binh thuong (cac lenh ben duoi van dc chay chi khi nao thanh cong thi chay lenh nay)
    //     .catchError((e){//thao tac khi xay ra loi
    //         print(e);
    //     }
    // )
    // .whenComplete(() => print("success"));//khi thanh cong se chay lenh nay

    // countStream(5).listen((i) => print(i));

    final stream = countStream(5);
    stream.listen((i) => print(i));
    stream.listen((i) => print(i));
    

    // final controller = StreamController<int>.broadcast();
    // controller.stream.listen((i) => (print(i)));

    // controller.add(1);
    // controller.add(2);

    // x(controller);

    // //dong stream
    // await controller.close();//cho cho den khi listener het su kien moi dong
}

void x(var controller){
    controller.add(3);
}


Stream<int> countStream(int to) async*{
    for(int i=0;i <= to;i++){
        await Future.delayed(const Duration(seconds: 2));//chay bat dong bo
        yield i;
    }
}

Future<String> fakeData() async {
     await Future.delayed(Duration(seconds: 2),(){
            throw Exception("Du lieu khong hop le");
        }
    );
}

