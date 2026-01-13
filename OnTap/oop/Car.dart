import 'Vehicle.dart';

class Car extends Vehicle {
  double _engineSize;
  double _horsePower;
  Car(
    String name,
    int year, {
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

  @override
  String toString() {
    return super.toString() +
        ' EngineSize: $_engineSize HorsePower: $_horsePower';
  }

  @override
  void describe() {
    print("This is car of $name");
  }
}
