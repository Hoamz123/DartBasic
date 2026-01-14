import 'Bicycle.dart';
import 'Car.dart';
import 'Vehicle.dart';

//cach 1
List<T> filter<T extends Vehicle>(List<Vehicle> vehicles) {
  return vehicles.whereType<T>().toList();
}

//cach 2
extension VehicleListExtension on List<Vehicle> {
  List<T> filterTypeVehicle<T extends Vehicle>() {
    return whereType<T>().toList();
  }
}

void main(List<String> args) {
  Car car1 = Car(name: 'dvh', year: 2026, engineSize: 20.7, horsePower: 123.5);
  Car car2 = Car(name: 'dvh', year: 2026, engineSize: 20.7, horsePower: 123.5);
  // print(car1 == car2);
  // print(car1.equals(car2));

  // // Car car3 = car1; //lua nay car1 va car 3 se tro den cung 1 vung nho
  // // print(identical(car1, car3));
  // // print(car3);

  // //copy 1 va thay doi 1 vai thuoc tinh
  // Bicycle bicycleRoot = Bicycle(name: 'DVH', year: 2026, hasBasket: true);

  // Bicycle bicycle = bicycleRoot.copyWith(name: "DINH VAN HOA", year: 2000);
  // print(bicycleRoot);
  // print(bicycle);
  // print(Bicycle.MAX);

  //lam viec voi list
  List<Vehicle> vehicles = [
    Car(name: 'dvh', year: 2026, engineSize: 20.7, horsePower: 123.5),
    Car(name: 'toyota', year: 2020, engineSize: 1.8, horsePower: 138.0),
    Car(name: 'bmw', year: 2022, engineSize: 3.0, horsePower: 255.0),
    Car(name: 'audi', year: 2023, engineSize: 2.0, horsePower: 190.0),
    Car(name: 'mercedes', year: 2021, engineSize: 2.5, horsePower: 221.0),
    Car(name: 'honda', year: 2019, engineSize: 1.5, horsePower: 158.0),
    Car(name: 'ford', year: 2018, engineSize: 2.3, horsePower: 280.0),
    Car(name: 'mazda', year: 2020, engineSize: 2.0, horsePower: 187.0),
    Car(name: 'lexus', year: 2024, engineSize: 3.5, horsePower: 311.0),
    Bicycle(name: 'Trek', year: 2019, hasBasket: true),
    Bicycle(name: 'Specialized', year: 2021, hasBasket: false),
    Bicycle(name: 'Cannondale', year: 2022, hasBasket: true),
    Bicycle(name: 'Merida', year: 2018, hasBasket: false),
    Bicycle(name: 'Trinx', year: 2023, hasBasket: true),
    Bicycle(name: 'Asama', year: 2024, hasBasket: false),
    Bicycle(name: 'Galaxy', year: 2020, hasBasket: true),
    Bicycle(name: 'Thống Nhất', year: 2017, hasBasket: true),
    Car(name: 'porsche', year: 2025, engineSize: 4.0, horsePower: 379.0),
  ];

  // cars.forEach(print);//mot cach duyet list
  // cars.asMap().forEach((idx, val) {//2 cach duyet list
  //   print('$idx : $val');
  // });

  //loc lay phan tu dau tien thoa man yeu cau de bai neu khong tim tahy thi tra ve null
  // Car? car = cars.where((it) => it.name == 'dcvbdvvh').firstOrNull ?? null;

  // if (car != null) {
  //   print(car);
  // } else {
  //   print("Car not found");
  // }

  //loc ra 1 list theo yc de bai filter
  // List<Car> carsFiltered = cars.where((it) => it.year <= 2020).toList();
  // carsFiltered.asMap().forEach((key, value) => print('$key $value'));

  //loc theo type cach 1
  // List<Car> cars = filter(vehicles);
  // cars.forEach(print);

  //loc thep type cach 2
  // List<Bicycle> bicycles = vehicles.filterTypeVehicle(); //loc ra tat ca xe dap
  // bicycles
  //     .where((it) => it.year <= 2020)
  //     .toList()
  //     .map((it) => it.copyWith(name: "HONDA"))
  //     .forEach(print);

  //copy list and sort
  // List<Car> cars = vehicles.filterTypeVehicle();
  // List<Car> tmp = [...cars]; //copy
  // print("Before");
  // tmp.forEach(print);
  // print("After");
  // tmp.sort((a, b) {
  //   return a.name.compareTo(b.name);
  // });
  // tmp.forEach(print);

  //kieu du lieu map trong dart
  var map = <int, int>{}; //co teh khai bao nhu nay
  final Map<String, int> mapAge = {};
  //neu de final o day thi ko the mapAge = map khac dc nhung van co the thay doi gia trn ben trong
  //con neu de la const thi ko the thay doi ca gia tri ben trong duoc
  mapAge['DVH'] = 10;
  mapAge['HHH'] = 12;

  mapAge.forEach((key, value) => print('$key $value'));

  mapAge['DVH'] = 20;
  mapAge.forEach((key, value) => print('$key $value'));
}
