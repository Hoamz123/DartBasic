//list trong dart

void main(List<String> args) {
  // final List<String> persons = ['Doa', 'Bwa', 'Ainh van hoa'];
  // persons = ['dinh van hoa']; //gan thanh mang khac(neu de final thi khong de gan)
  // print(persons); //hien ra dnah sach
  // print(persons.length); //do dai cua mang

  // //van co the day doi gia tri ben trong neu de list la final
  // //nhung neu de la const thi khong the sua doi(co dinh roi em): chat che hon final
  // persons[0] = "toi ten la hoa";
  //[toi ten la hoa, hwa, dinh van hoa]
  // print(persons);

  //duyet danh sach
  // persons.forEach((it) {
  //   print(it);
  // });
  // persons.shuffle();
  // print("After shuffle");
  // persons.add("DINH VAN HOA"); //giong push_back(value) trong C++
  // persons.asMap().forEach(
  //   (key, value) => print('$key $value'),
  // ); //key la index,tu 0 den n - 1

  // //chen vao vi tri bat ki
  // persons.insert(0, "dinh hoa");

  // persons.forEach(print);

  //clone: tao ra mảng giống hệt nhau nhưng mà nằm ở vùng nhớ khác nhau

  // List<String> clonePerson = [
  //   ...persons,
  // ]; //moi thu nhu ban cu (,khac vung nho thoi)
  // persons[0] = "hoa day"; //sửa ở mảng gốc
  // clonePerson.forEach(
  //   print,
  // ); //mảng này là mảng copy nên co vùng nhớ khác nhau nên sửa ở gốc sẽ không ảnh hưởng đến mảng này

  //sort
  // persons.forEach(print);

  // //sort
  // persons.sort((a, b) => a.compareTo(b));
  // print("After sort");
  // persons.forEach(print);

  // List<int> numbers = [];
  // numbers.add(1);
  // numbers.add(10);
  // numbers.add(2);
  // numbers.add(0);
  // // numbers.forEach(print);
  // //sort
  // numbers.sort((a, b) {
  //   // return a - b;//tang dan
  //   return b - a; //giam dan
  // });
  // numbers.forEach(print);

  List<double> numbers = [];
  numbers.add(2.3);
  numbers.add(1.3);
  numbers.add(6.3);
  numbers.add(0.3);
  numbers.add(20.3);

  numbers.sort((a, b) {
    if (a > b)
      return 1;
    else if (a == b)
      return 0;
    return -1;
  });

  numbers.forEach(print);
}
