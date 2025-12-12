import 'CanBo.dart';
import 'CongNhan.dart';
import 'KySu.dart';
import 'NhanVien.dart';
import 'QLCB.dart';

void main(List<String> args) {
    QLCB qlcb = QLCB();//KHOI TAO QL
    
    //them moi can bo vao ds quan ly
    qlcb.addNewCanBo(Kysu("hoa", 20, Gender.male, "TB", "CNTT"));
    qlcb.addNewCanBo(Kysu("hwa", 25, Gender.male, "HY", "CNTT"));
    qlcb.addNewCanBo(Congnhan("hoa", 20, Gender.male, "TB", 3));
    qlcb.addNewCanBo(Nhanvien("hoa", 20, Gender.male, "TB", "AI"));


    // print(qlcb.soLuongCanBo);    

    //nhap ten canbo de search
    // String name = stdin.readLineSync()!;

    // qlcb.searchByName(name);

    //show
    qlcb.showInfor();


}