void main() {
  // String first = "dinh";
  // String name = "van hoa";
  // String ans = first + ' ' + name; //add 2 string
  // String res = '$first $name'; //add two string type 2
  // print("Name: $res");
  // print("Name: $ans"); //in mac dinh la xuong dong moi

  // stdout.write("Name: $res"); //in ma khong tu dong xuong dong

  //in tren nhieu dong
  String data = '''
    dinh van hoa
    dinh van aho
    dinh van hoa
  ''';
  print(data);

  print("Copy right \u00a9"); //u: unicode: ki tu dac biet

  //kiem tra rong
  if (data.isEmpty) {
    print("Cuoi rong");
  } else {
    print("Khong rong");
  }

  //kieu du lieu bool
  bool isValid = data.isNotEmpty;

  if (isValid) {
    print("OK");
  }
}
