

import 'dart:io';

//list in dart

void main(List<String> args) {
    var numbers = <int>[];
    numbers.add(1);
    numbers.add(2);
    numbers.add(3);
    
    // print(numbers.length);

    // numbers.forEach((it){
    //     stdout.write("$it ");
    // });
    // print("");
    // numbers.sort((a,b) => b.compareTo(a));

    // numbers.forEach((it){
    //     stdout.write("$it ");
    // });
    // print("");
    // for(int x in numbers){
    //     stdout.write("$x ");
    // }
    // numbers.sort((a,b) => a.compareTo(b));//sort tang dan
    // numbers.add(4);
    // numbers.removeAt(0);//xoa phan tu dau tien
    // //in ra 2 3 4
    // showList(numbers);

    //xoa voi dieu kien
    // numbers.removeWhere((number) => number > 2);
    // showList(numbers);

    var firstVal = (numbers.isNotEmpty) ? numbers.first : null;
    print(firstVal);

    List<int?> tmpList = List<int?>.from(numbers);
    tmpList.add(null);

    showList(tmpList);
}

void showList<T>(List<T?> list){
    print("");
    list.forEach((it){
        stdout.write("$it ");
    });
}