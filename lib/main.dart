import 'package:femmespot/BookingScreen.dart';
import 'package:femmespot/Forgotpassword.dart';
import 'package:femmespot/GetStarted.dart';
import 'package:femmespot/HomePage.dart';
import 'package:femmespot/Profile.dart';
import 'package:femmespot/ProfileMain.dart';
import 'package:femmespot/SignUp.dart';
import 'package:femmespot/SplashScreen.dart';
import 'package:femmespot/WelcomePage.dart';
import 'package:femmespot/onBoardingScreen.dart';
import 'package:femmespot/OTPscreen.dart';
import 'package:flutter/material.dart';

import 'SignIn.dart';
import 'nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,fontFamily: 'Poppins'
      ),
      home: SplashScreen(),
    );
  }
}
