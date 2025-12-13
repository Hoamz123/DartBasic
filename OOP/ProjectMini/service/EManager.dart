
import 'dart:io';
import '../entity/Employee.dart';
import 'ValidatorException.dart';

class EManager {
    List<Employee> _employees;

    EManager() : _employees = <Employee> [];//ds employee

    //them mot nhan vien moi
    bool addEmployee(Employee employee){
        //check xem empl ton tai hay chua
        bool isValid = _employees.any((empl) => empl.ID == employee.ID);
        if(!isValid){
            _employees.add(employee);
            return true;//add thanh cong
        }
        return false;//khong them dc
    }

    //xoa nhan vien
    bool removeEmployee(String IDEmployee){
        //check xem empl ton tai hay khong
        bool isValid = _employees.any((empl) => empl.ID == IDEmployee);
        if(isValid){
            //co the xoa dc
            Employee empl = _employees.where((employee) => employee.ID == IDEmployee).first;//chac cahn se co gia tri
            _employees.remove(empl);
            return true;
        }
        return false;
    }

    //sua nhan vien
    bool editEmployee(String IDEmployee){
        //check xem empl ton tai hay khong
        bool isValid = _employees.any((empl) => empl.ID == IDEmployee);
        if(isValid){
            Employee empl = _employees.where((employee) => employee.ID == IDEmployee).first;//chac cahn se co gia tri
            stdout.write("Nhap lai FullName: ");
            empl.FullName = stdin.readLineSync()!;
            _inputBirthDay(empl);
            _inputPhone(empl);
            _inputEmail(empl);
            return true;
        }
        return false;//khong ton tai
    }

    //tim tat ca cac nhan vien theo type cua no
    List<T> filterEmployeeByType<T extends Employee>(){
        return _employees.whereType<T>().toList();
    }


    void _inputBirthDay(Employee empl) {
        while (true) {
            try {
                stdout.write("Nhap BirthDay (dd/MM/yyyy): ");
                empl.birthDay = stdin.readLineSync()!;
                ValidatorException.validateBirthDay(empl.birthDay);
                break;
            } 
            catch (e) {
                print(e);
            }
        }
    }

    void _inputPhone(Employee empl){
        while(true){
            try{
                //dung
                stdout.write("Nhap so dien thoai : dai 10 ki tu: ");
                empl.phone = stdin.readLineSync()!;
                ValidatorException.validatePhone(empl.phone);
                break;
            }catch(e){
                print(e);
            }
        }
    }


    void _inputEmail(Employee empl){
        while(true){
            try{
                stdout.write("Nhap Email: ");
                empl.email = stdin.readLineSync()!;
                ValidatorException.validateEmail(empl.email);
                break;
            }catch(e){
                print(e);
            }
        }
    }
}
