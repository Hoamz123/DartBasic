
// import 'dart:io';

void main(List<String> args) {
    // int n = int.parse(stdin.readLineSync()!);
    // n = change(n,(it) => (
    //     it * it
    // ));
    // print(n);

    // print(addNumbers(2, 6));

    // show(name: "hwa",age: 20);
    // print(add(3, 6,100));

    Pay("hwa","12/12/2025",(s1,s2) =>(
        print("$s1 : $s2")
    ));
}

add(int a,int b,[int c = 0]) => a + b + c;


void show({String name = "default value",int age = 20}){
    print("Name : $name --- Age : $age");
}

addNumbers(a,b) => a + b;
minusNumber(a,b) => a - b;


//higher order func
int change(int a,int Function(int) higherOrderFunc){
    return higherOrderFunc(a);
}

void Pay(String name,String date,void Function(String,String) method){
    method(name,date);
}