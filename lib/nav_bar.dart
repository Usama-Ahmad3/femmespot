import 'package:femmespot/Gradient.dart';
import 'package:femmespot/ProfileMain.dart';
import 'package:flutter/material.dart';

import 'BookingScreen.dart';
import 'Explore.dart';
import 'HomePage.dart';
import 'Inbox.dart';
import 'Profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentTab = 0;
  final List<Widget> screens = [
    const HomePage(), // 0
    const Explore(), // 1
    const MyBooking(), // 2
    const ProfileMain(), // 4
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageStorage(
          bucket: bucket,
          child: screens[currentTab],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient:
                    LinearGradient(colors: [Colors.deepOrange, Colors.pink])),
            child: const Icon(
              Icons.message_outlined,
              size: 26,
            ),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Inbox()));
          },
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 9,
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = const HomePage();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          currentTab == 0
                              ? RadiantGradientMask(
                                  child: const Icon(
                                  Icons.home_outlined,
                                  color: Colors.white,
                                ))
                              : const Icon(Icons.home_outlined,
                                  color: Colors.grey),
                          currentTab == 0
                              ? RadiantGradientMask(
                                  child: const Text(
                                  'Home',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11),
                                ))
                              : const Text(
                                  'Home',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 11),
                                )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = const Explore();
                          currentTab = 1;
                        });
                      },
                      child: Container(
                        // width: 50, color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            currentTab == 1
                                ? RadiantGradientMask(
                                    child: const Icon(
                                    Icons.explore_outlined,
                                    color: Colors.white,
                                  ))
                                : const Icon(Icons.explore_outlined,
                                    color: Colors.grey),
                            currentTab == 1
                                ? RadiantGradientMask(
                                    child: const Text(
                                    'Explore',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11),
                                  ))
                                : const Text(
                                    'Explore',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11),
                                  )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = const MyBooking();
                          currentTab = 2;
                        });
                      },
                      child: Container(
                        // width: 50, color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            currentTab == 2
                                ? RadiantGradientMask(
                                    child: const Icon(
                                    Icons.calendar_today,
                                    color: Colors.white,
                                    size: 18,
                                  ))
                                : const Icon(
                                    Icons.calendar_today,
                                    color: Colors.grey,
                                    size: 18,
                                  ),
                            currentTab == 2
                                ? RadiantGradientMask(
                                    child: const Text(
                                    'My Booking',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11),
                                  ))
                                : const Text(
                                    'My Booking',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11),
                                  )
                          ],
                        ),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Profile();
                          currentTab = 3;
                          // whatsapp
                        });
                      },
                      child: Container(
                        // color: Colors.red,
                        // width: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            currentTab == 3
                                ? RadiantGradientMask(
                                    child: const Icon(
                                    Icons.account_circle,
                                    color: Colors.white,
                                  ))
                                : const Icon(Icons.account_circle,
                                    color: Colors.grey),
                            currentTab == 3
                                ? RadiantGradientMask(
                                    child: const Text(
                                    'Profile',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11),
                                  ))
                                : const Text(
                                    'Profile',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11),
                                  )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
