import 'package:flutter/material.dart';
import 'package:pet_paradise/ui/small/loginSmallView.dart';
import 'package:provider/provider.dart';
import 'package:pet_paradise/provider/screen_size_provider.dart';
import 'package:pet_paradise/ui/large/login.dart';

import 'provider/screen_size_provider.dart';
import 'ui/large/login.dart';
import 'ui/small/loginSmallView.dart';

class Responsivescreen extends StatelessWidget {
  const Responsivescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenProvider = Provider.of<ScreenSizeProvider>(context);

    return Scaffold(
      body: Center(
        child: screenProvider.isMobile()
            ? const LoginScreenSmall()
            : screenProvider.isTablet()
                ? const LoginScreenLarge()
                : const LoginScreenLarge(),
      ),
    );
  }
}
