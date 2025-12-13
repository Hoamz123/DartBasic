
import 'Nguoi.dart';

class Hogiadinh {
    int _soThanhVien;
    String _soNha;
    List<Nguoi> _cacCaNhan;

    Hogiadinh(int soThanhVien, String soNha) 
        : _soThanhVien = soThanhVien,_soNha = soNha,_cacCaNhan = <Nguoi> [];


    //getter/setter
    get soThanhVien => _soThanhVien;
    get soNha => _soNha;
    List<Nguoi> get cacCaNhan => _cacCaNhan;
    set soThanhVien(int stv) => _soThanhVien = stv;



    //them ca nhan vao ho gia dinh
    void addCaNhan(Nguoi caNhan){
        if(_cacCaNhan.length == _soThanhVien){
            print("Ho gia dinh da du nguoi,Vui long them so luong thanh vien");
        }
        else{
            bool isExists = _cacCaNhan.any((user) => user.soCC == caNhan.soCC);
            //neu ton tai
            if(isExists){
                print("Ca nhan da o trong ho gia dinh");
            }
            else{
                _cacCaNhan.add(caNhan);
                print("Them thanh vien thanh cong");
            }
        }
    }

    //xoa ca nhan khoi ho gia dinh
    void removeCaNhan(String soCC){
        bool isExists = _cacCaNhan.any((user) => user.soCC == soCC);
        if(isExists){
            //=> xoa dc
            var user = _cacCaNhan.where((user) => user.soCC == soCC).first;//chac chan co gia trij != null
            _cacCaNhan.remove(user);
            print("Xoa ca nhan khoi ho gia dinh thanh cong");
        }           
        else{
            print("Khong tin thay ca nhan trong ho gia dinh");
        }
    }

    //hien thi ds cac ca nhan trong gia dinh
    void showInfor(){
        print("So luong thanh vien : ${_cacCaNhan.length}");
        _cacCaNhan.forEach((user) => print(user));
        print("");
    }
}
