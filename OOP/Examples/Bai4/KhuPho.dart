import 'HoGiaDinh.dart';
import 'Nguoi.dart';

class Khupho {
    String _tenKhuPho;
    List<Hogiadinh> _dsHoGiaDinh;

    Khupho(this._tenKhuPho) : _dsHoGiaDinh = <Hogiadinh>[];

    get tenKhuPho => _tenKhuPho;

    //them ho gia dinh vao khu pho
    void addHoGiaDinh(Hogiadinh hoGiaDinh){
        bool isExists = _dsHoGiaDinh.any((hgd) => hgd.soNha == hoGiaDinh.soNha);
        if(isExists){
            print("Ho gia dinh da ton tai");
        } 
        else{
            _dsHoGiaDinh.add(hoGiaDinh);
            print("Them ho gia dinh thanh cong");
        }
    }

    //them ca nhan vao ho gia dinh
    void addCaNhanVaoHoGiaDinh(Nguoi caNhan,Hogiadinh hgd){
        bool isValid = _daThuocMotHoGiaDinh(caNhan.soCC);
        if(isValid){
            print("Nguoi nay da thuoc ho gia dinh khac");
        }
        else{
            //co the them dc
            hgd.addCaNhan(caNhan);
        }
    }

    //hien thi thong tin cac ho trong khu pho
    void showInfor(){
        print("So Luong Ho Gia Dinh Trong Khu Pho : ${_dsHoGiaDinh.length}");
        _dsHoGiaDinh.forEach((hgd) => hgd.showInfor());
    }


    //kiem tra xem 1 user co phai la da o trong 1 ho gia dinh hay ko
    bool _daThuocMotHoGiaDinh(String soCC){
        return _dsHoGiaDinh.any((hgd) => 
                hgd.cacCaNhan.any((user) => user.soCC == soCC));
    }
}