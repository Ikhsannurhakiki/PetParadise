import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_paradise/ui/small/signin/bloc/signin_event.dart';
import 'package:pet_paradise/ui/small/signin/bloc/signin_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInit()) {
    on<SignInButtonPressed>((event, emit) async{
      emit(SignInLoading());
      await Future.delayed(Duration(seconds: 2));

      try{
        if(event.password.isEmpty || event.username.isEmpty){
          emit(SignInFailure(message: "Check your data again"));
        }else{
          emit(SignInSuccess());
        }
      }catch(e){
        emit(SignInFailure(message: "Failure to proceed data"));
      }
    });
  }
}