import 'package:flutter/material.dart';
import 'package:pet_paradise/assets/helper/colors.dart';
import 'package:provider/provider.dart';
import 'provider/screen_size_provider.dart';
import 'package:pet_paradise/responsiveScreen.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ScreenSizeProvider()),
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
        scaffoldBackgroundColor: AppColors.paleTurquoise,
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
    final screenProvider =
        Provider.of<ScreenSizeProvider>(context, listen: false);

    return LayoutBuilder(
      builder: (context, constraints) {
        screenProvider
            .updateSize(Size(constraints.maxWidth, constraints.maxHeight));
        return const Responsivescreen();
      },
    );
  }
}
