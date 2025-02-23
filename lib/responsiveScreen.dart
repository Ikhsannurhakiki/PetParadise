import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_paradise/data/bloc/screen_state.dart';
import 'package:pet_paradise/ui/large/login.dart';
import 'package:pet_paradise/ui/small/signin/loginSmallView.dart';

import 'data/bloc/screen_bloc.dart';
import 'data/bloc/screen_event.dart';

class Responsivescreen extends StatelessWidget {
  const Responsivescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenBloc = BlocProvider.of<ScreenBloc>(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final size = MediaQuery.of(context).size;

      screenBloc.add(ScreenSizeChanged(size.width));
    });
    return Scaffold(
        body: BlocBuilder<ScreenBloc, ScreenState>(builder: (context, state) {
      if (state is MobileScreenState) {
        return const LoginScreenSmall();
      } else if (state is MobileScreenState) {
        return LoginScreenLarge();
      }
      return Center(child: CircularProgressIndicator());
    }));
  }
}
