import 'Vehicle.dart';

class Car extends Vehicle {
  double _engineSize;
  double _horsePower;
  Car({
    required String name,
    required int year,
    required double engineSize,
    required double horsePower,
  }) : _engineSize = engineSize,
       _horsePower = horsePower,
       super(name, year);

  //getter
  double get engineSize => _engineSize;
  double get horsePower => _horsePower;

  //setter
  set engineSize(double param) => _engineSize = param;
  set horsePower(double param) => _horsePower = param;

  String toString() {
    return super.toString() +
        ' EngineSize: $_engineSize HorsePower: $_horsePower';
  }

  @override
  void describe() {
    print("This is car of $name");
  }

  bool equals(Object other) =>
      identical(this, other) ||
      (other is Car &&
          this.name == other.name &&
          this.year == other.year &&
          this._horsePower == other._horsePower &&
          this._engineSize == other._engineSize);
}
