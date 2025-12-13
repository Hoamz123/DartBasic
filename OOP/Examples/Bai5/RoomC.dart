
import 'Room.dart';

class RoomC extends Room{

    @override
    int pay(int countDay) {
        return countDay * 100;
    }
}