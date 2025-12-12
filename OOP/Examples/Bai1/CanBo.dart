
enum Gender{
    male,
    female,
    other
}

abstract class Canbo {
    String _name;
    int _age;
    Gender _gender;
    String _address;

    Canbo(this._name,this._age,this._gender,this._address);

    String get getHoTen => _name;

    int get getAge => _age;

    Gender get getGender => _gender;

    String get getAddress => _address;

    @override
    String toString() {
        return "Name $_name and Age : $_age and Gender : $_gender and Address : $_address";
    }

}