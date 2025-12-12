
/*
 Mã tài liệu(Mã tài liệu là duy nhất), 
 Tên nhà xuất bản, 
 số bản phát hành.
*/

abstract class Tailieu {
    String _maTaiLieu;
    String _tenNhaXuatBan;
    int _soBanPhatHanh;

    Tailieu(this._maTaiLieu,this._tenNhaXuatBan,this._soBanPhatHanh);

    get getMaTaiLieu => _maTaiLieu;

    get getTenNhaXuatBan => _tenNhaXuatBan;

    get getSoBanPhatHanh => _soBanPhatHanh;

    @override
    String toString() {
        return "$_maTaiLieu and $_tenNhaXuatBan and $_soBanPhatHanh";
    }
}