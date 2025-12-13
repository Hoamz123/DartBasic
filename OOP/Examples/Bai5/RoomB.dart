import 'Room.dart';

class RoomB extends Room {

    @override
    int pay(int countDay) {
        return countDay * 300;
    }
}