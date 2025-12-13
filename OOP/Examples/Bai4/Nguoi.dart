

class Nguoi {
    String _hoTen;
    int _tuoi;
    String _ngheNghiep;
    String _soCc;//duy nhat

    Nguoi(this._hoTen,this._tuoi,this._ngheNghiep,this._soCc);

    get hoTen => _hoTen;
    get tuoi => _tuoi;
    get ngheNgiep => _ngheNghiep;
    get soCC => _soCc;

    @override
    String toString() {
        return "Ten : $_hoTen and Tuoi : $_tuoi and NgheNghiep : $_ngheNghiep and SoCC : $_soCc";        
    }

    @override
    int get hashCode => _tuoi.hashCode ^ _hoTen.hashCode ^ _ngheNghiep.hashCode;
}

