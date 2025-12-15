
class Person {
    String name;
    int age;

    Person({required this.name,required this .age});
    
    @override
    String toString() => "Name: $name, Age: $age";
}