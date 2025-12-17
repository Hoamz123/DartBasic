

class Learnexception implements Exception{
    final String _message;
    Learnexception(this._message);
    @override
    String toString() => _message;
}