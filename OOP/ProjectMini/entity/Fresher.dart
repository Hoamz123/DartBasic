
import 'Certificate.dart';
import 'Employee.dart';

class Fresher extends Employee{
    String _graduationDate;//thoi gian tot nghiep
    String _graduationRank;//xep loai
    String _education;//truong nao

    Fresher(super.ID, super.fullName, super.birthDay, super.email, super.phone, super.type,
        String graduationDate,String graduationRank,String education,{List<Certificate>? certificates})
        : _graduationDate = graduationDate,_graduationRank = graduationRank,_education = education,super(certificate: certificates);//truyen nen cons cua cha


    String get graduationDate => _graduationDate;
    String get graduationRank => _graduationRank;
    String get education => _education;

    @override
    void showInfor() {
        super.showInfor();
        print("Graduation Date : $_graduationDate, Graduation Rank : $_graduationRank, Education : $_education");
        super.showCertification();
    }
}