import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_pro/Screns/login_Screen.dart';

import 'Home_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('assets/images/cloud logo.png'),
      nextScreen: LoginView(),
      backgroundColor: Colors.white,
      splashTransition: SplashTransition.slideTransition,
      splashIconSize: 200,
    );
  }
}
