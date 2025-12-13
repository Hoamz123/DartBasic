
import 'HoGiaDinh.dart';
import 'KhuPho.dart';
import 'Nguoi.dart';

void main(List<String> args) {
    //ds user
    var n1 = Nguoi("Nguyen Van A", 25, "Ky su", "CC001");
    var n2 = Nguoi("Tran Thi B", 30, "Giao vien", "CC002");
    var n3 = Nguoi("Le Van C", 28, "Bac si", "CC003");
    var n4 = Nguoi("Pham Thi D", 22, "Sinh vien", "CC004");
    var n5 = Nguoi("Hoang Van E", 35, "Ky su", "CC005");
    var n6 = Nguoi("Nguyen Thi F", 27, "Nhan vien", "CC006");

    Khupho khuPho = Khupho("LNQ");

    Hogiadinh hgd1 = Hogiadinh(3, "12-09-LNQ");
    Hogiadinh hgd2 = Hogiadinh(5, "13-09-LNQ");

    //add ho nay vao khu pho
    khuPho.addHoGiaDinh(hgd1);
    khuPho.addHoGiaDinh(hgd2);

    khuPho.addCaNhanVaoHoGiaDinh(n1, hgd1);
    khuPho.addCaNhanVaoHoGiaDinh(n2, hgd1);
    khuPho.addCaNhanVaoHoGiaDinh(n3, hgd1);

    khuPho.addCaNhanVaoHoGiaDinh(n4, hgd2);
    khuPho.addCaNhanVaoHoGiaDinh(n5, hgd2);
    khuPho.addCaNhanVaoHoGiaDinh(n6, hgd2);


    khuPho.showInfor();
    
}