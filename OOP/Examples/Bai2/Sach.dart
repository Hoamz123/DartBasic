

import 'TaiLieu.dart';

class Sach extends Tailieu{
    String _tenTacGia;
    int _soTrang;

    Sach(String maTaiLieu,String tenNhaXuatBan,int soBanPhatHanh,String tenTacGia,int soTrang)
     : _tenTacGia = tenTacGia,_soTrang = soTrang,super(maTaiLieu,tenNhaXuatBan,soBanPhatHanh);

    get getTenTacGia => _tenTacGia;
    get getSoTrang => _soTrang;

    @override
    String toString() {
        return super.toString() + " and Ten tac gia : $_tenTacGia and So trang : $_soTrang";
    }
}