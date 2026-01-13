abstract class Vehicle {
  String _name;
  int _year;

  Vehicle(this._name, this._year);

  //getter / setter
  String get name => _name;
  int get year => _year;

  set name(String newName) => _name = newName;
  set year(int newYear) => _year = newYear;

  @override
  String toString() {
    return 'Name: $_name Year: $_year';
  }

  //method
  void describe();
}
