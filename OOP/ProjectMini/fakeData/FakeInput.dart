

import '../entity/Certificate.dart';
import '../entity/CertificateRank.dart';
import '../entity/EmployeeType.dart';
import '../entity/Experience.dart';
import '../entity/Fresher.dart';
import '../entity/Intern.dart';

class Fakeinput {
    static List<Experience> fakeExperience(){
        final exp1 = Experience(
        "E001",
        "Nguyen Van A",
        "12/03/1995",
        "a@gmail.com",
        "0123456789",
        EmployeeType.Experience,
        5,
        "Flutter",
        certificates: fakeCertificates()
        );

        final exp2 = Experience(
        "E002",
        "Tran Van B",
        "20/07/1993",
        "b@gmail.com",
        "0123456790",
        EmployeeType.Experience,
        7,
        "Backend Java",
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
        return [exp1,exp2,exp3,exp4];
    }

    static List<Fresher> fakeFresher() {
        final fr1 = Fresher(
            "F001",
            "Nguyen Thi A",
            "10/10/2000",
            "a.fresher@gmail.com",
            "0912345678",
            EmployeeType.Fresher,
            "06/2023",
            "Excellent",
            "Ha Noi University",
        );

        final fr2 = Fresher(
            "F002",
            "Tran Van B",
            "22/05/1999",
            "b.fresher@gmail.com",
            "0912345679",
            EmployeeType.Fresher,
            "07/2022",
            "Very Good",
            "Da Nang University",
        );

        final fr3 = Fresher(
            "F003",
            "Le Thi C",
            "01/01/2001",
            "c.fresher@gmail.com",
            "0912345680",
            EmployeeType.Fresher,
            "06/2024",
            "Good",
            "Ho Chi Minh University",
        );

        final fr4 = Fresher(
            "F004",
            "Pham Van D",
            "15/08/2000",
            "d.fresher@gmail.com",
            "0912345681",
            EmployeeType.Fresher,
            "06/2023",
            "Excellent",
            "PTIT",
        );

        final fr5 = Fresher(
            "F005",
            "Hoang Thi E",
            "30/12/1999",
            "e.fresher@gmail.com",
            "0912345682",
            EmployeeType.Fresher,
            "07/2021",
            "Very Good",
            "HUST",
        );

        return [fr1, fr2, fr3, fr4, fr5];
    }


    static List<Intern> fakeIntern() {
        final in1 = Intern(
            "I001",
            "Nguyen Van Nam",
            "15/09/2002",
            "nam@gmail.com",
            "0987654321",
            EmployeeType.Intern,
            "Computer Science",
            6,
            "Hanoi University",
        );

        final in2 = Intern(
            "I002",
            "Tran Thi Mai",
            "20/11/2003",
            "mai@gmail.com",
            "0987654322",
            EmployeeType.Intern,
            "Information Technology",
            5,
            "Da Nang University",
        );

        final in3 = Intern(
            "I003",
            "Le Van Huy",
            "02/02/2001",
            "huy@gmail.com",
            "0987654323",
            EmployeeType.Intern,
            "Software Engineering",
            7,
            "HUST",
        );

        final in4 = Intern(
            "I004",
            "Pham Thi Ngoc",
            "30/06/2002",
            "ngoc@gmail.com",
            "0987654324",
            EmployeeType.Intern,
            "Mobile Development",
            6,
            "FPT University",
        );

        return [in1, in2, in3, in4];
    }

    static List<Certificate> fakeCertificates() {
        final c1 = Certificate(
            "C001",
            "IELTS",
            CertificateRank.excellent,
            "01/01/2022",
        );

        final c2 = Certificate(
            "C002",
            "TOEIC",
            CertificateRank.veryGood,
            "15/03/2021",
        );

        final c3 = Certificate(
            "C003",
            "Flutter Advanced",
            CertificateRank.good,
            "20/06/2023",
        );

        return [c1, c2, c3];
    }


}