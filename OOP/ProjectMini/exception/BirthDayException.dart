
class BirthDayException implements Exception{
    final String _massage;
    BirthDayException(this._massage);

    @override
    String toString() => _massage;
}