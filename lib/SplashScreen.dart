import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:femmespot/GetStarted.dart';
import 'package:femmespot/SignUp.dart';
import 'package:femmespot/onBoardingScreen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('assets/images/FemmeSpot-Color-Logo.png'),
      nextScreen: OnBoardingScreen(),
      splashTransition: SplashTransition.rotationTransition,
      pageTransitionType: PageTransitionType.rightToLeft,
    );
    //   Container(
    //   color: Colors.white,
    //   child: Image.asset('assets/images/FemmeSpot-Color-Logo.png'),
    // );
  }
}
