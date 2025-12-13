

import 'KhoiThi.dart';
import 'ThiSinh.dart';
import 'TuyenSinh.dart';

void main(List<String> args) {
    Tuyensinh tuyenSinh = Tuyensinh();
    
    final thiSinh1 = Thisinh("TS01", "An", "Ha Noi", 1, Khoithi.A);
    final thiSinh2 = Thisinh("TS02", "Binh", "Hai Phong", 2, Khoithi.B);
    final thiSinh3 = Thisinh("TS03", "Chi", "Da Nang", 0, Khoithi.C);
    final thiSinh4 = Thisinh("TS04", "Dung", "Ho Chi Minh", 1, Khoithi.A);
    final thiSinh5 = Thisinh("TS05", "Em", "Can Tho", 2, Khoithi.B);


    tuyenSinh.addThiSinh(thiSinh1);
    tuyenSinh.addThiSinh(thiSinh2);
    tuyenSinh.addThiSinh(thiSinh3);
    tuyenSinh.addThiSinh(thiSinh4);
    tuyenSinh.addThiSinh(thiSinh5);

    // tuyenSinh.showInfor();

    tuyenSinh.searchThiSinhBySBD("CT08");
    tuyenSinh.searchThiSinhBySBD("TS01");
}