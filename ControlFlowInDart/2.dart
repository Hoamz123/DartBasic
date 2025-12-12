import 'dart:io';
/**
 * swith case
 */
void main(List<String> args) {
    stdout.write("Nhap diem : ");
    int mark = int.parse(stdin.readLineSync()!);

    switch(mark){
        case 9:case 10:{
            print("Gioi");
        }
        break;
        case 8:case 7:case 6:{
            print("Kha");
        }
        break;
        default:{
            print("Trung binh");
        }
    }
}