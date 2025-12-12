
import 'dart:io';

void main(List<String> args) {
    int n = int.parse(stdin.readLineSync()!);
    n = change(n,(it) => (
        it * it
    ));
    print(n);
}

//higher order func
int change(int a,int Function(int) higherOrderFunc){
    return higherOrderFunc(a);
}