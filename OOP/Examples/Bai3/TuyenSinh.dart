import 'dart:io';
import 'KhoiThi.dart';
import 'ThiSinh.dart';

class Tuyensinh {
    List<Thisinh> _listThiSinh;

    Tuyensinh() : _listThiSinh = <Thisinh>[];//list chua ds thi sinh

    //Them moi thi sinh
    void addThiSinh(Thisinh thiSinh){
        bool isValid = _listThiSinh
            .any((it) => it.soBaoDanh.toString().toLowerCase() == thiSinh.soBaoDanh.toString().toLowerCase());

        if(!isValid){
            _listThiSinh.add(thiSinh);
        }
        else print("Thi sinh da ton tai");
    }

    //Hien thi thong tin va khoi thi cua thi sinh
    void showInfor(){
        stdout.write("So Luong Thi Sinh : ");
        print(_listThiSinh.length);
        _listThiSinh.forEach((ts) => (
            print(ts)
        ));
    }

    //search by sbd
    void searchThiSinhBySBD(String sbd){
        var thiSinh = _listThiSinh.where((ts) => ts.soBaoDanh.toLowerCase() == sbd.toLowerCase()).firstOrNull;
        if(thiSinh == null){
            print("Thi Sinh Khong Ton Tai");
        }
        else print(thiSinh);
    }


    //cac mon thi cua thi sinh theo khoi thi
    static List<String> getCacMonThi(Khoithi khoiThi){
        if(khoiThi == Khoithi.A){
            return <String>["Toan","Ly","Hoa"];
        }
        else if(khoiThi == Khoithi.B){
            return <String>["Toan","Hoa","Sinh"];
        }
        return <String>["Van","Su","Dia"];
    }
}