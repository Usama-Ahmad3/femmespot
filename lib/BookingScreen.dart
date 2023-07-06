import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:femmespot/Cancelled.dart';
import 'package:femmespot/Completed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Gradient.dart';
import 'HomePage.dart';
import 'Upcoming.dart';

class MyBooking extends StatefulWidget {
  const MyBooking({Key? key}) : super(key: key);

  @override
  State<MyBooking> createState() => _MyBookingState();
}

class _MyBookingState extends State<MyBooking> {
  int currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              iconTheme: const IconThemeData(color: Colors.deepOrange),
              title: Text(
                  "My Booking",
                  style:  TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()..shader = const LinearGradient(
                        colors: <Color>[
                          Colors.deepOrange,
                          Colors.pink],
                      ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
                  )
              ),
              elevation: 0,
              bottom: ButtonsTabBar(
                contentPadding: const EdgeInsets.only(left: 20, right: 20),
                  borderWidth: 2,
                  borderColor: Colors.pink, unselectedBorderColor: Colors.pink,
                  unselectedBackgroundColor: Colors.transparent,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Colors.deepOrange, Colors.pink,
                      ],
                    ),
                  ),
                  unselectedLabelStyle: const TextStyle(color: Colors.pink,
                      fontWeight: FontWeight.w900),
                  labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
                  height: 50,
                  radius: 80,
                  tabs: const [
                    Tab(
                      text: 'Upcoming',
                    ),
                    Tab(
                      text: 'Completed',
                    ),
                    Tab(
                      text: 'Cancelled',
                    ),
                  ]),
            ),
            body: const TabBarView(
                children: [
                  UpcomingScreen(),
                  CompletedScreen(),
                  CancelledScreen(),
            ]),
          ),
        );
  }
}
