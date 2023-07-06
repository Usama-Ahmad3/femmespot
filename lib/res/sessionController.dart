class SessionController {
  static final SessionController _session = SessionController._internal();

  String? currentUser;
  factory SessionController() {
    return _session;
  }
  SessionController._internal() {}
}
