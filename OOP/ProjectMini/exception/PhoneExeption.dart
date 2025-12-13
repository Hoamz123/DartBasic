

class PhoneExeption implements Exception{
    final String _massage;
    PhoneExeption(this._massage);

    @override
    String toString() => _massage;
}