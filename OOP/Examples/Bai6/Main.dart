import 'Student.dart';
import 'StudentManager.dart';

void main(List<String> args) {
    final s1 = Student("Nguyen Van An", 20, "Ha Noi");
    final s2 = Student("Tran Thi Bich", 21, "Hai Phong");
    final s3 = Student("Le Van Cuong", 19, "Da Nang");
    final s4 = Student("Pham Thi Duyen", 22, "Nam Dinh");
    final s5 = Student("Hoang Van Em", 20, "Thai Binh");

    Studentmanager manger = Studentmanager();
    manger.addNewStudent(s1);
    manger.addNewStudent(s2);
    manger.addNewStudent(s3);
    manger.addNewStudent(s4);
    manger.addNewStudent(s5);


    manger.showStudentTwentyYearOld();
}