import 'entity/Employee.dart';
import 'entity/EmployeeType.dart';
import 'entity/Experience.dart';
import 'fakeData/FakeInput.dart';
import 'service/EManager.dart';

void main(List<String> args) {
    EManager manager = EManager();

    final exp1 = Experience(
        "E001",
        "Nguyen Van A",
        "12/03/1995",
        "a@gmail.com",
        "0123456789",
        EmployeeType.Experience,
        5,
        "Flutter",
        certificates: Fakeinput.fakeCertificates(),
    );

    final exp3 = Experience(
        "E003",
        "Le Van C",
        "01/01/1990",
        "c@gmail.com",
        "0123456791",
        EmployeeType.Experience,
        10,
        "System Design",
        );

    final exp4 = Experience(
        "E004",
        "Pham Van D",
        "15/11/1996",
        "d@gmail.com",
        "0123456792",
        EmployeeType.Experience,
        3,
        "Mobile Android",
        );

    //add
    manager.addEmployee(exp1);
    manager.addEmployee(exp3);
    manager.addEmployee(exp4);
    print(Employee.employeeCount);

    List<Employee> employyees = manager.filterEmployeeByType<Experience>();
    employyees.forEach((expert) => expert.showInfor());

    //gia dinh sua thang E004
    if(manager.editEmployee("E004")){
        print("Edit success\n");
    }
    else print("Wrong");

    List<Employee> employyees2 = manager.filterEmployeeByType<Experience>();
    employyees2.forEach((expert) => expert.showInfor());
}