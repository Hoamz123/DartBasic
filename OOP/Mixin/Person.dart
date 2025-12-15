

import 'Method.dart';

class Person with Method{
    // @override
    // void eat() {
    //     super.eat();
    //     print("This is override in Person");
    // }
}

void main(List<String> args) {
    Person person = Person();
    person.eat();
}