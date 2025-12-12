


import 'TaiLieu.dart';

class Tapchi extends Tailieu{
    int _soPhatHanh;
    int _thangPhatHanh;

    Tapchi(String maTaiLieu,String tenNhaXuatBan,int soBanPhatHanh,int soPhatHanh,int thangPhatHanh) 
    : _soPhatHanh = soPhatHanh,_thangPhatHanh = thangPhatHanh,super(maTaiLieu,tenNhaXuatBan,soBanPhatHanh);

    get getSoPhatHanh => _soPhatHanh;

    get getThangPhatHanh => _thangPhatHanh;

    @override
    String toString() {
        return super.toString() + " and So phat hanh : $_soPhatHanh and Thang phat hanh : $_thangPhatHanh";
    }
}