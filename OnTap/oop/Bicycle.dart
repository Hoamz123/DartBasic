import 'Vehicle.dart';

class Bicycle extends Vehicle {
  bool _hasBasket = false; //co gio xe hay khong

  static final int MAX = 1000;

  Bicycle({required String name, required int year, required hasBasket})
    : _hasBasket = hasBasket,
      super(name, year);

  //getter/setter
  bool get hasBasket => _hasBasket;
  set hasBaket(bool hasBaket) => _hasBasket = hasBaket;

  @override
  String toString() {
    return super.toString() + ' Basket: $_hasBasket';
  }

  @override
  void describe() {
    print("This is bicycle");
  }

  //override ==
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Bicycle) return false;
    return this.name == other.name &&
        this.year == other.year &&
        this._hasBasket == other._hasBasket;
  }

  //tu viet equals so sanh hai doi tuong theo content (neu khong ghi de thi se so sanh theo dia chi o nho)
  bool equals(Object other) =>
      identical(this, other) ||
      (other is Bicycle &&
          this.name == other.name &&
          this.year == other.year &&
          this._hasBasket == other._hasBasket);

  //copyWith = clone ans change property's value
  Bicycle copyWith({String? name, int? year, bool? hasBasket}) => Bicycle(
    //?? default value (gia tri mac dinh khi name = null)
    name: name ?? this.name,
    year: year ?? this.year,
    hasBasket: hasBasket ?? this._hasBasket,
  );
}
