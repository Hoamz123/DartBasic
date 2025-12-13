
/*
ID, FullName, BirthDay,Phone, Email, Employee_type,Employee_count
*/

import 'dart:io';
import 'Certificate.dart';
import 'EmployeeType.dart';

class Employee {
    String _ID;//PK
    String _fullName;
    String _birthDay;
    String _phone;
    String _email;
    EmployeeType _type;
    static int employeeCount = 0;
    List<Certificate>? _certificates;//co the null ve co nguoi ko co bang cap

    //getter
    String get ID => _ID;
    String get FullName => _fullName;
    String get birthDay => _birthDay;
    String get phone => _phone;
    String get email => _email;
    EmployeeType get type => _type;

    //setter
    set ID(String newID) => _ID = newID;
    set FullName(String newName) => _fullName = newName;
    set birthDay(String newBirthDay) => _birthDay = newBirthDay;
    set phone(String newPhone) => _phone = newPhone;
    set email(String newEmail) => _email = newEmail;
    set type(EmployeeType newType) => _type = newType;

    Employee(this._ID,this._fullName,this._birthDay,this._email,this._phone,this._type,{List<Certificate>? certificate}){
        employeeCount++;
        if(certificate != null){
            _certificates = certificate;
        }
    }

    void showInfor(){
        stdout.write("ID : $_ID, Name : $_fullName, Birthday : $_birthDay, Phone : $_phone, Email : $_email, Type : $_type ");
    }

    void showCertification(){
        if(_certificates != null){
            print("Cerfitication : ");
            _certificates?.forEach((cer) => print(cer));
        }
    }

}