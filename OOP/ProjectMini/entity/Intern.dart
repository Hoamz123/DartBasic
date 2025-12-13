

import 'Certificate.dart';
import 'Employee.dart';

class Intern extends Employee{
    String _major;//nganh dang hoc
    int _semester;//ki dang hoc
    String _university;

    Intern(super.ID, super.fullName, super.birthDay, super.email, super.phone, super.type,
        String major,int semester,String university,{List<Certificate>? certificates})
        : _major = major,_semester = semester,_university = university,super(certificate: certificates);

    String get major => _major;
    int get semester => _semester;
    String get university => _university;

    @override
    void showInfor() {
        super.showInfor();
        print("Major : $_major, Semester : $_semester, University : $_university");
        super.showCertification();
    }
}