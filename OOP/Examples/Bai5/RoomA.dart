import 'Room.dart';

class RoomA extends Room {

    @override
    int pay(int countDay) {
        return countDay * 500;
    }
}