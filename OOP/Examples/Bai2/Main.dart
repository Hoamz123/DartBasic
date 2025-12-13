import 'Bao.dart';
import 'QLSach.dart';
import 'Sach.dart';
import 'TapChi.dart';

void main(List<String> args) {
    QLSach ql = QLSach();
     // Thêm dữ liệu
    ql.addNewTaiLieu(Sach("S01", "NXB Kim Đồng", 1000, "Nguyễn Nhật Ánh", 250));
    ql.addNewTaiLieu(Tapchi("S01", "NXB Trẻ", 500, 12, 6));
    ql.addNewTaiLieu(Bao("B01", "Thanh Niên", 2000, 12));

    print(ql.getSoLuongTaiLieu());

    List<Sach> list = ql.getTaiLieuByType();

    list.forEach((it) => (print(it)));
}