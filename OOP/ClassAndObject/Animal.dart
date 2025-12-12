
//khai bao 1 lop (giong Java)
class Animal {
    String? _name;
    int? _age;

    //giong het java
    //cach 1
    // Animal(String name,int age){
    //     this._name = name;
    //     this._age = age;
    // }

    // cach 2
    // Animal(this._name,this._age);

    Animal({String? name = "unknown",int? age = 20}){
        this._name = name;
        this._age = age;
    }

    //cach 3 : Cons vs tham so tuy chon
    // Animal({String name = "unknown",required int? age}) : _name = name,_age = age; 

    void display(){
        print("Name $_name");
        print("Age : $_age");
    }

    //getter setter
    String get name => _name ?? "Unknown";
    
    //setter name
    void set name(String? name) => _name = name;

    //setter age

    void set age(int? age) => _age = age;

    int get age => _age ?? 10;
}