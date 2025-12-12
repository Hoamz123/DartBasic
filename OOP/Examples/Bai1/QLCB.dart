
import 'CanBo.dart';

class QLCB {
    List<Canbo>? _listCanBo;

    QLCB(){
        _listCanBo = <Canbo> [];
    }  

    int? get soLuongCanBo => _listCanBo?.length;

    //Thêm mới cán bộ.
    void addNewCanBo(Canbo canbo){
        _listCanBo?.add(canbo);
    }

    //Tìm kiếm theo họ tên.
    void searchByName(String name){
        var listSearched = _listCanBo?.where((it) => it.getHoTen.toLowerCase() == name.toLowerCase()).toList();

        listSearched?.forEach((user) => (
            print(user)
        ));
    }

    //Hiện thị thông tin về danh sách các cán bộ.
    void showInfor(){
        print("Danh sach hien co ${_listCanBo?.length}");

        _listCanBo?.forEach((user) => (print(user)));
    }
}