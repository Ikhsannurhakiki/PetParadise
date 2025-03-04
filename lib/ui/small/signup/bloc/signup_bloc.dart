import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_paradise/ui/small/signup/bloc/signup_event.dart';
import 'package:pet_paradise/ui/small/signup/bloc/signup_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState>{
  SignUpBloc() : super(SignUpInit())  {
    on<SignUpButtonPressed>((event, emit)async{
      emit(SignUpLoading());
      if (event.username.isEmpty){
        emit(SignUpFailure(message: "Check your data again"));
      }
    });
  }
}