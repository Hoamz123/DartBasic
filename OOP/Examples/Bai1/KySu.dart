

import 'CanBo.dart';

class Kysu extends Canbo{
    String _major;

    Kysu(String name,int age,Gender gender,String address,String major) 
    : _major = major,super(name,age,gender,address);

    String get getMajor => _major;

    @override
    String toString() {
        return super.toString() + " Major : $_major";
    }
}