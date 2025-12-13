

class Emailexception implements Exception {
    final String _massage;
    Emailexception(this._massage);

    @override
    String toString() => _massage;
}
