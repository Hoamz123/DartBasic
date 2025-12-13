
import 'dart:io';
import 'Order.dart';

class HotelManager {
    List<Order> _orders;

    HotelManager() : _orders = <Order> [];

    //them khach moi(new order)
    void addOrder(Order order){
        _orders.add(order);
    }

    //xoa customer (== xoa order) theo so CCCD
    void removeCustomer(String nationalID){
        bool isValid = _orders.any((order) => order.customer.nationalID == nationalID);
        if(isValid){
            //neu co ton tai khach hang nay
            //-> xoa order cua no
            Order order = _orders.where((order) => order.customer.nationalID == nationalID).first;
            _orders.remove(order);
            print("Xoa khach hang thanh cong");
        }
        else print("Khong tim thay khach hang");
    }

    //tinh tien thue phong cho khach => khanh nhap CCCD vao
    void showBill(String nationalID){
        bool isValid = _orders.any((order) => order.customer.nationalID == nationalID);
        if(isValid){
            //neu co ton tai khach hang nay
            //-> tinh tien cho no
            stdout.write("NationalID : $nationalID : ");
            Order order = _orders.where((order) => order.customer.nationalID == nationalID).first;
            order.pay();
        }
        else print("Khong tim thay khach hang");
    }
}