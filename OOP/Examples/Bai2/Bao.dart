
import 'TaiLieu.dart';

class Bao extends Tailieu{
    int _ngayPhatHanh;

    Bao(String maTaiLieu,String tenNhaXuatBan,int soBanPhatHanh,int ngayPhatHanh)
     : _ngayPhatHanh = ngayPhatHanh,super(maTaiLieu,tenNhaXuatBan,soBanPhatHanh);

    get getNgayPhatHanh => _ngayPhatHanh;

    @override
    String toString() {
        return super.toString() + " and Ngay phat hanh : $_ngayPhatHanh";
    }
}