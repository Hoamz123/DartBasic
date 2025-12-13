

import 'Certificate.dart';
import 'Employee.dart';

class Experience extends Employee{
    int _expInYear;//so nam kinh nghiem
    String _proSkill;//ki nang

    Experience(super.ID, super.fullName, super.birthDay, super.email, super.phone, super.type,
        int expInYear,String proSkill,{List<Certificate>? certificates}) 
        : _expInYear = expInYear,_proSkill = proSkill,super(certificate: certificates);

    int get expInYear => _expInYear;
    String get proSkill => _proSkill;

    set expInYear(int year) => _expInYear = year;
    set proSkill(String newProSkill) => _proSkill = newProSkill;

    @override
    void showInfor() {
        super.showInfor();
        print(", ExpInYear : $_expInYear, ProSkill : $_proSkill");
        super.showCertification();
        print("");
    }


    void author(){
        print("hwa");
    }

}