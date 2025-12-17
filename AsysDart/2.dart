
//todo 17/12/2004
import 'exception/LearnException.dart';

Future<void> main(List<String> args) async {
    
    //bat loi nhu the nay
    // String name = await getFullName(firstName: "h", lastName: "hwa")
    //     .catchError((e){
    //         return "Unknown";
    //     });
    // print(name);

    //hoac
    try{
        String name = await getFullName(firstName: "aaaa", lastName: "Dinh Van Hoa");
        print(name);
    }catch(e){
        print(e);
    }

    print("close");
}

Future<String> getFullName({
    required String firstName,
    required String lastName,
}) async {
    if(firstName.length < 2 || lastName.length < 2){
        throw Learnexception("Ten khong duoc ngan qua");
    }
    return Future.value("$firstName $lastName");
}

void learnFuture(){
    // String name = await getUser();
    // print(name);

    // String address = await getAddress();
    // print(address);

    // String phone = await getPhoneNumber();
    // print(phone);

    // String city = await getCity();
    // print(city);
}

Future<void> getUserName() async{
    await Future.delayed(const Duration(seconds: 3));
    print("on progress...");
}

Future<String> getUser() async => "hoamz";

Future<String> getAddress() => Future.value("18 LNQ");//dung cai nay trong case : Gia tri da co san,ko can async,hieu nang tit hon

Future<String> getPhoneNumber() => Future.delayed(const Duration(seconds: 2),() => "hoamz");

Future<String> getCity() async{
    await Future.delayed(const Duration(seconds: 5));
    return "HN";
}

/**
 * Khong dung async neu khong co await
 */