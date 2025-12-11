
//Operators in Dart

// import 'dart:io';

void main(List<String> args) {
    int a = 10;
    int b = 5;
    // print(a + b);//mac dinh in ra xong xuong dong
    // stdout.write(a + b);//viet tren 1 dong ma ko xuong dong
    
    print("Cong ${a + b}");
    print("Tru ${a - b}");
    print("Nhan ${a * b}");
    print("Chia ${a / b}");//mac dinh no khac cac ngon ngu khac (cai nay no ep ve double)
    print("Chia lay phan nguyen ${a ~/ b}");
    print("Chia lay phan du ${a % b}");


    //toan tu so sanh

    var check = a > b;
    var checkEquals = a == b;

    if(check){
        print("A lon hon B");
    }
    else if(checkEquals) print("A bang B");
    else print("A nho hon B");


    //is is!
    dynamic name = "hoa";
    if(name is String){
        print("Yes");
    }

    dynamic age = 30;
    if(age is! String){
        print("Not");
    }

    //ep kieu
    dynamic x = "hoa";
    String y = x as String;
    print(y);

    //toan tu 3 ngoi trnog dart giong java/C++

    var result = (a > b) ? "A lon hon B" : "A nho hon B";
    print(result);

    //toan tu check null
    int ?_a = null;
    var res = _a ?? "a is null";
    print(res);
    _a = 10;
    res = _a;
    print(res);
}