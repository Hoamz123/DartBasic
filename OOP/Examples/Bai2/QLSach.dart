
/*
Thêm mới tài liêu: Sách, tạp chí, báo.
Xoá tài liệu theo mã tài liệu.
Hiện thị thông tin về tài liệu.
Tìm kiếm tài liệu theo loại: Sách, tạp chí, báo.
*/
import 'dart:core';
import 'TaiLieu.dart';

class QLSach {
    List<Tailieu> _listTaiLieu;

    QLSach() : _listTaiLieu = <Tailieu> [];

    //so luong tai lieu hien dang chua
    int getSoLuongTaiLieu(){
        return _listTaiLieu.length;
    } 

    //Thêm mới tài liêu: Sách, tạp chí, báo.
    void addNewTaiLieu(Tailieu tailieu){
        String maTL = tailieu.getMaTaiLieu;
        bool isValid = _listTaiLieu.any((it) => (it.getMaTaiLieu == maTL));//kiem tra xem trong list co hay chua
        if(!isValid){
            //co the add dc
            _listTaiLieu.add(tailieu);
        }
        else print("Tai lieu da ton tai");
    }

    //Xoá tài liệu theo mã tài liệu.
    void delTaiLieuByMaTL(String maTL){
        for(var taiLieu in _listTaiLieu){
            if(taiLieu.getMaTaiLieu.toString().toLowerCase() == maTL.toLowerCase()){
                _listTaiLieu.remove(taiLieu);
                print("Xoa tai lieu thanh cong");
            }
        }
    }

    //Hiện thị thông tin về tài liệu.
    void display(){
        print("So Luong tai lieu hien tai : ${_listTaiLieu.length}");
        _listTaiLieu.forEach((it) => (print(it)));
    }


    //Tìm kiếm tài liệu theo loại: Sách, tạp chí, báo.
    List<T> getTaiLieuByType<T extends Tailieu>() {
        return _listTaiLieu.whereType<T>().toList();
    }

    

}