class Vector {
  int x;
  int y;

  Vector({required this.x, required this.y});

  //operator
  /*+*/
  Vector operator +(Vector other) => Vector(x: x + other.x, y: y + other.y);

  /*-*/
  Vector operator -(Vector other) => Vector(x: x - other.x, y: y - other.y);

  @override
  String toString() {
    return "{$x $y}";
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is Vector && this.x == other.x && this.y == other.y;
  }

  Vector copyWith({int? x, int? y}) => Vector(x: x ?? this.x, y: y ?? this.y);
}

class Person {
  String _username;
  String _address;

  Person({required String username, required String address})
    : _username = username,
      _address = address;

  String get username => _username;
  String get address => _address;

  set username(String val) => _username = val;
  set address(String val) => _address = val;

  Person copyWith({String? username, String? address}) => Person(
    username: username ?? this._username,
    address: address ?? this._address,
  );
}

void main(List<String> args) {
  Vector v = Vector(x: 10, y: 12);
  //copy mot phan
  Vector ve = v.copyWith(x: 90);
  // Vector vec = v.copyWith(y: 20);

  Vector vr = v.copyWith(x: 2);

  print(vr);
  print(ve);
}
