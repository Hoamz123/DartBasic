import 'Customer.dart';
import 'HotelManager.dart';
import 'Order.dart';
import 'RoomA.dart';
import 'RoomB.dart';
import 'RoomC.dart';

void main(List<String> args) {
    HotelManager manager = HotelManager();

    //fake 5 customer
    final c1 = Customer("Nguyen Van A", 30, "012345678901");
    final c2 = Customer("Tran Thi B", 25, "012345678902");
    final c3 = Customer("Le Van C", 40, "012345678903");
    final c4 = Customer("Pham Thi D", 35, "012345678904");
    final c5 = Customer("Hoang Van E", 28, "012345678905");

    //fake 5 order
    Order o1 = Order(101, 5, c1, new RoomA());
    Order o2 = Order(102, 2, c3, new RoomC());
    Order o3 = Order(103, 7, c2, new RoomB());
    Order o4 = Order(104, 9, c4, new RoomA());
    Order o5 = Order(105, 2, c5, new RoomB());

    //fake
    manager.addOrder(o1);
    manager.addOrder(o2);
    manager.addOrder(o3);
    manager.addOrder(o4);
    manager.addOrder(o5);

    // //in ra so tien can tra cua khach hang co CCCD = 012345678901
    // manager.showBill("012345678903");

    manager.removeCustomer("012345678901");//xoa thanh cong
    manager.showBill("012345678901");//ko ton tai khanh hang nay

}