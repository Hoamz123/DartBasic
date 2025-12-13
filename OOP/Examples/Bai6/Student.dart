
class Student {
    String _name;
    int _age;
    String _address;

    Student(this._name,this._age,this._address);


    String get name => _name;
    int get age => _age;
    String get address => _address;

    @override
    String toString() {
        return "Ho ten : $_name and Tuoi : $_age and Dia Chi : $_address";
    }

    void showInfor(){
        print(this);
    }

    @override
    bool operator ==(Object o) {
        if(identical(this,o)) return true;
        if(o is! Student) return false;
        return _name == o._name && _age == o._age && _address == o._address;
    }

    @override
    int get hashCode => super.hashCode;
}