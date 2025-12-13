
import 'Student.dart';

class Studentmanager {
    List<Student> _students;

    Studentmanager() : _students = <Student> [];

    //them hoc sinh moi
    void addNewStudent(Student student){
        bool isExists = _students.any((stdu) => stdu == student);
        if(isExists){
            print("Hoc sinh da ton tai");
        }
        else {
            _students.add(student);
            print("Them hoc sinh thanh cong");
        }
    }

    //hien thi cac hoc sinh 20 tuoi
    void showStudentTwentyYearOld(){
        List<Student> students = _students.where((student) => student.age == 20).toList();
        students.forEach((student) => student.showInfor());
    }
}