abstract class SignUpState {}

class SignUpInit extends SignUpState {}

class SignUpLoading extends SignUpState {}

class SignUpSuccess extends SignUpState {}

class SignUpFailure extends SignUpState {
  final String message;

  SignUpFailure({required this.message});
}
