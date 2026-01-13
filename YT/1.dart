//on lai constructor
abstract class Action {
  void eat();
  void play() {
    print("hi");
  }
}

class User extends Action {
  late String _id; //khoi tao sau
  late String _username;
  late String _password;

  User({
    required String id,
    required String username,
    required String password,
  }) {
    this._id = id;
    this._username = username;
    this._password = password;
  }

  //cach de khai bao nhieu cons
  User.DefaultUser() {
    this._id = "CT8B";
    this._username = "CT080221";
    this._password = '1234';
  }

  String get id => _id;
  String get username => _username;
  String get password => _password;

  set username(String username) => _username = username;
  set password(String password) {
    if (password.length < 6) {
      print("Password too short");
    } else
      _password = password;
  }

  @override
  String toString() {
    return "Id : $_id, Username : $_username, Password : $_password";
  }

  @override
  void eat() {
    print("eating...");
  }

  @override
  void play() {
    print("ghi de lai toan bo");
  }

  void higherOrderFunc(int a,int b,void Function(int,int) excute ){
    excute(a,b);
  }

  void higer2(int a,int b,int Function(int,int) getSum){
    print(getSum(a,b));
  }

}

void main() {
  //cons co doi
  User user = new User(id: "12", username: "hwa", password: "1234");
  print(user);

   user.higherOrderFunc(10, 1,(a,b){
        print(a + b);
   });

    user.higer2(10, 10,(a,b){
        return a + b;
    });
}
