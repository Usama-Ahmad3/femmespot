class AppException implements Exception {
  final _message;
  final _prefix;

  AppException(this._message, this._prefix);
  String toString() {
    return '$_message$_prefix';
  }
}

class InternetException extends AppException {
  InternetException([String? message]) : super(message, 'No Internet');
}

class ApiStatusException extends AppException {
  ApiStatusException([String? message]) : super(message, '');
}

class Timeout extends AppException {
  Timeout([String? message]) : super(message, '');
}
