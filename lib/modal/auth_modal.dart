class AuthModal {
  String emailId;
  String name;
  String password;

  AuthModal(
      this.emailId,
      this.name,
      this.password,
      );

  factory AuthModal.fromMap({required Map data}) {
    return AuthModal(
      data['emailId'],
      data['name'],
      data['password'],
    );
  }
}


class UserModal {
  late String userName;
  late String email;
  late String image;
}
