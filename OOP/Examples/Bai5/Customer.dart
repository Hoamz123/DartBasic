
class Customer {
    String _name;
    int _age;
    String _nationalID;//duy nhat

    Customer(this._name,this._age,this._nationalID);

    String get nam => _name;
    int get age => _age;
    String get nationalID => _nationalID;

    @override
    bool operator == (Object other) {
        if(identical(this, other)) return true;
        if(other is! Customer) return false;
        return _name == other._name && _age == other._age && _nationalID == other._nationalID;
    }

    @override
    int get hashCode => Object.hash(_name, _nationalID);
}