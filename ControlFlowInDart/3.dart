


import 'dart:io';
import 'dart:math';

void main(List<String> args) {
    int a = int.parse(stdin.readLineSync()!);
    // checkEvenOrOdd(a);
    // checkAge(a);
    snt(a);
}

//Bài 1 – Kiểm tra số chẵn / lẻ
void checkEvenOrOdd(int a){
    bool isEven = (a % 2 == 0);
    if(isEven){
        print("Even");
    }
    else print("Odd");
}

//Bài 2 – Kiểm tra tuổi hợp lệ
void checkAge(int age){
    if(age < 0){
        print("Invalid");
    }
    else if(age <= 17){
        print("Teenager");
    }
    else if(age <= 60){
        print("Adult");
    }
    else print("Old");
}

//Bai 3 : Kiem tra so nguyen to
void snt(int a){
    bool ok = true;
    for(int i=2;i<=sqrt(a);i++){
        if(a % i == 0){
            print("Khong phai snt");
            ok = false;
            break;
        }
    }
    if(ok) print("So nguyen to");
}