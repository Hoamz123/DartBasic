
import 'KhoiThi.dart';
import 'TuyenSinh.dart';

class Thisinh {
    String _soBaoDanh;
    String _hoTen;
    String _diaChi;
    int _mucUuTien;
    Khoithi _khoiThi;

    Thisinh(this._soBaoDanh,this._hoTen,this._diaChi,this._mucUuTien,this._khoiThi);

    get soBaoDanh => _soBaoDanh;
    get hoTen => _hoTen;
    get diaChi => _diaChi;
    get mucUuTien => _mucUuTien;
    get khoiThi => _khoiThi;

    @override
    String toString() {
        return "SBD : $_soBaoDanh and HoTen : $_hoTen and DiaChi : $_diaChi and MucUuTien : $_mucUuTien and KhoiThi : ${Tuyensinh.getCacMonThi(_khoiThi)}";
    }
}