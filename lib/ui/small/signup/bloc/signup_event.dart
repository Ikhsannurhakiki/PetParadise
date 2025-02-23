abstract class SignUpEvent {}

class SignUpButtonPressed extends SignUpEvent {
  final String username;
  final String email;
  final String password;
  final String confirmPassword;

  SignUpButtonPressed(
      {required this.username,
      required this.email,
      required this.password,
      required this.confirmPassword});
}
