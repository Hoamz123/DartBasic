

import 'CanBo.dart';

class Nhanvien extends Canbo{
    String _job;

    Nhanvien(String name,int age,Gender gender,String address,String job) 
    :_job = job,super(name,age,gender,address);

    String get getJob => _job;

    @override
    String toString() {
        return super.toString() + " Job : $_job";
    }

}