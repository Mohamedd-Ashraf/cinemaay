
class UserSession {
  String? username;

  void setUsername(String name) {
    username = name;
  }

  String getUsername() => username ?? 'Amigos';
}
