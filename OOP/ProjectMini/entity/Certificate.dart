


import 'CertificateRank.dart';

class Certificate {
    // CertificatedID, CertificateName, CertificateRank, CertificatedDate
    String _certificatedID;//ID cua bang
    String _certificateName;//ten 
    CertificateRank _certificateRank;//xep loai
    String _certificatedDate;//ngay cap

    //cons
    Certificate(this._certificatedID,this._certificateName,this._certificateRank,this._certificatedDate);


    //getter
    String get CertificatedID => _certificatedID;
    String get CertificateName => _certificateName;
    CertificateRank get certificateRank => _certificateRank;
    String get CertificatedDate => _certificatedDate;

    @override
    String toString() {
        return "CertificatedID : $_certificatedID, CertificateName : $_certificateName, CertificateRank : $_certificateRank, CertificatedDate : $_certificatedDate";
    }
}