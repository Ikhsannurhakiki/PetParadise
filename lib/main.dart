import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pet_paradise/data/bloc/screen_bloc.dart';
import 'package:pet_paradise/firebase_options.dart';
import 'package:pet_paradise/responsiveScreen.dart';
import 'package:pet_paradise/ui/small/signin/bloc/SignInBloc.dart';
import 'package:pet_paradise/ui/small/signup/bloc/signup_bloc.dart';
import 'package:pet_paradise/utils/colors.dart';

Future<void> main() async {
  await WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: "lib/assets/.env");

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ScreenBloc()),
        BlocProvider(create: (context) => SignInBloc()),
        BlocProvider(create: (context) => SignUpBloc())
      ],
      child: const MyApp(),
    ));
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.babyBlue),
        primarySwatch: AppColors.lightBlueSwatch,
        // Use the brown MaterialColor
        primaryColor: AppColors.babyBlue,
        // Primary color
        scaffoldBackgroundColor: Colors.white,
        // Background color

        useMaterial3: true,
      ),
      home: const ScreenWrapper(),
    );
  }
}

class ScreenWrapper extends StatelessWidget {
  const ScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return const Responsivescreen();
      },
    );
  }
}
