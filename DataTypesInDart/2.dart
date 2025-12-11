


//set
import 'dart:io';

void main(List<String> args) {
    //khai abao truoc du lieu
    Set<int> se = <int>{1,2,4,3,5,7,6};
    showSet(se);
}


void showSet<T>(Set<T?> se){
    print("");
    se.forEach((it){
        stdout.write("$it ");
    });
}