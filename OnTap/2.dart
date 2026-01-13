//learn function

int add1(int a, int b) => a + b;

int add(int a, int b) {
  return a + b;
}

//ham co lable va default value = 0
//thu tu khi truyen tham so vao khong quan trong
int multiply({int a = 0, int b = 0}) {
  //neu khong truyen param vao thi se co val = 0
  return a + b;
}

//tham so dau vao duoc gan nhan (cai nay ko co tham so dau vao va no se bat buoc phai co 2 tham so bat buoc)
int addd({required int a, int? b}) {
  return a + (b ?? 0); //neu khong truyen b vao -> b == null -> b = 0
}

//ham khong tra ve gia tri
void sayHi({String name = 'world'}) {
  print("Hello $name");
}

String getUrl(String serverName, {int port = 8080}) {
  return 'https://$serverName:$port';
}

//ham voi tahm so truyen vao la optional(neu khong co thi de null)
String getDateTime({int? day, int? month}) {
  String dayDormat = (day ?? 0) < 10
      ? '0$day'
      : '$day'; //day ?? valua : default value trong case day = null
  return '$dayDormat:$month';
}

//ham nhan 1 ham khac  lam tham so
void doSomeThing({
  required int param1,
  required int param2,
  required Function(int, int) block,
}) {
  print("Do something");
  block(param1, param2);
}

//dung ? cho ham lam tham so khi muon ham la option
void method({required int a, required int b, Function? block}) {
  print("hi");
  block?.call(
    a,
    b,
  ); //ham block luc nay la option (neu truyen vao thi ms thc hien khgong thi khong chay)
}

void main(List<String> args) {
  sayHi(name: "dinh van hoa");
  // int res = multiply(b: 10, a: 30);
  // String res = getUrl("study4", port: 3030);
  // String res = getDateTime(month: 10);
  // print("Result: $res");

  doSomeThing(param1: 10, param2: 20, block: (a, b) => print(a + b));

  method(a: 10, b: 100);
}
