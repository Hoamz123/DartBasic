
import '../exception/BirthDayException.dart';
import '../exception/EmailException.dart';
import '../exception/PhoneExeption.dart';

class ValidatorException {
    
    //check email va nem ngoai le
    static void validateEmail(String email) {
        if(!email.contains('@')){
            throw Emailexception("Email khong hop le");
        }
    }

    static void validatePhone(String phone){
        if(phone.length != 10){
            throw PhoneExeption("So dien thoai khong hop le");
        }
    }

    static void validateBirthDay(String birthDay){
        if(birthDay.isEmpty){
            throw BirthDayException("BirthDay khong dc de trong");
        }
        var splits = birthDay.split('/');
        int day = int.parse(splits[0]);
        int month = int.parse(splits[1]);
        int year = int.parse(splits[2]);
        if(day < 0 || day > 31){
            throw BirthDayException("BirthDay khong hop le");
        }

        if(month < 0 || month > 12){
            throw BirthDayException("BirthDay khong hop le");
        }   
        if(year > DateTime.now().year){
            throw BirthDayException("BirthDay khong hop le");
        }
    }

}