import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pet_paradise/auth/AuthBloc.dart';
import 'package:pet_paradise/auth/auth_repository.dart';
import 'package:pet_paradise/data/bloc/screen_bloc.dart';
import 'package:pet_paradise/firebase_options.dart';
import 'package:pet_paradise/responsiveScreen.dart';
import 'package:pet_paradise/ui/small/home/bloc/home_bloc.dart';
import 'package:pet_paradise/ui/small/setting/settingSmallView.dart';
import 'package:pet_paradise/ui/small/signin/loginSmallView.dart';
import 'package:pet_paradise/ui/small/signup/bloc/signup_bloc.dart';
import 'package:pet_paradise/utils/colors.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'l10n/app_localization.dart';

Future<void> main() async {
  await WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: "lib/assets/.env");

  try{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );}catch (e){
    print(e);
  }

  try {
    var snapshot = await FirebaseFirestore.instance.collection("users").get();
    print("✅ Firestore Connected: ${snapshot.docs.length} documents");
  } catch (e) {
    print("❌ Firestore Error: $e");
  }
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ScreenBloc()),
        BlocProvider(create: (context) => AuthBloc(authRepository: AuthRepository())),
        BlocProvider(create: (context) => SignUpBloc()),
        BlocProvider(create: (context) => HomeBloc())
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
      title: 'Pet Paradise',
      supportedLocales: const[
        Locale('en', 'US'),
        Locale('id', 'ID'),
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        return supportedLocales.contains(locale) ? locale : const Locale('en');
      },
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
      initialRoute: "/",
      routes:{
        "/login":(context) => LoginScreenSmall(),
        "/settings":(context) => SettingSmallView()
      },
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
