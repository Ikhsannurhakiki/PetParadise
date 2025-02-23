abstract class SignInState {}

class SignInInit extends SignInState{}
class SignInLoading extends SignInState {}
class SignInSuccess extends SignInState{}
class SignInFailure extends SignInState{
  final String message;
  SignInFailure({required this.message});
}