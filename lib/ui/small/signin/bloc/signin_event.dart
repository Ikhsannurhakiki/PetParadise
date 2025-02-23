abstract class SignInEvent {}

class SignInButtonPressed extends SignInEvent{
  final String username;
  final String password;
  SignInButtonPressed(this.username, this.password);
}