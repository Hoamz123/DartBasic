import 'Car.dart';

void main(List<String> args) {
  Car car = Car("dvh", 2020, engineSize: 2345.67, horsePower: 123.45);
  car.name = "DINH VAN HOA";
  print(car);
  car.describe();
}
