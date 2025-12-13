
import 'Customer.dart';
import 'Room.dart';

class Order {
    int _countDays;//so ngay thue
    int _IdRoom;//id phong
    Room _room;//loai phong
    Customer _customer;//khach hang thue phong(mac dinh chi la 1 nguoi thue phong)

    Order(this._IdRoom,this._countDays,this._customer,this._room);

    get countDays => _countDays;
    get IdRoom => _IdRoom;
    get room => _room;
    Customer get customer => _customer;

    void pay(){
        print("So tien phai thanh toan la : ${_room.pay(_countDays)}");
    }
}