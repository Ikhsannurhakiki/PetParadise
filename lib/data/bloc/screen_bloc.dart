import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_paradise/data/bloc/screen_event.dart';
import 'package:pet_paradise/data/bloc/screen_state.dart';

class ScreenBloc extends Bloc<ScreenEvent,ScreenState>{
  ScreenBloc():super(MobileScreenState()){
    on<ScreenSizeChanged>((event, emit){
      if (event.width < 600) {
        emit(MobileScreenState());
      } else if (event.width >= 600 && event.width < 1200) {
        emit(TabletScreenState());
      } else {
        emit(DesktopScreenState());
      }
    }
    );
  }

}