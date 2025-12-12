

import 'CanBo.dart';

class Congnhan extends Canbo{
    int _level;

    Congnhan(String name,int age,Gender gender,String address,int level)
     : _level = level,super(name,age,gender,address);

    int get getLevel => _level;

    @override
    String toString() {
        return super.toString() + " Level : $_level";
    }

}