import 'package:femmespot/NotificationScreen.dart';
import 'package:femmespot/Privacypolicy.dart';
import 'package:femmespot/Profile.dart';
import 'package:femmespot/cancelbooking.dart';
import 'package:femmespot/models/profiletile.dart';
import 'package:flutter/material.dart';

class ProfileMain extends StatelessWidget {
  const ProfileMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 14),
            child: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          )
        ],
        leading: Image.asset(
          'assets/images/femmespot.jpeg',
          scale: 50,
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
              fontSize: 19, color: Colors.black, fontWeight: FontWeight.w900),
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 70,
                    child: Image.network(
                        'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/846a9086-8a40-43e0-aa10-2fc7d6d73730/dahhytf-7f302b6f-2dbc-41ee-99fa-1571452bf696.png/v1/fill/w_1024,h_1475,strp/dr__strange_character_png_by_mintmovi3_dahhytf-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTQ3NSIsInBhdGgiOiJcL2ZcLzg0NmE5MDg2LThhNDAtNDNlMC1hYTEwLTJmYzdkNmQ3MzczMFwvZGFoaHl0Zi03ZjMwMmI2Zi0yZGJjLTQxZWUtOTlmYS0xNTcxNDUyYmY2OTYucG5nIiwid2lkdGgiOiI8PTEwMjQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.eFgGgdm2Z8F1JrVIrlfKwd2pDzmAgT3xKT3uKn8EhZU'),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 110,
                    child: Container(
                        height: 30,
                        width: 31,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.pink.withOpacity(0.7)),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 22,
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Hafsa Naveed',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'engr.HafsaNaveed92@gmail.com',
              style: TextStyle(fontSize: 12.5),
            ),
            const SizedBox(
              height: 38,
            ),
            ProfileTile(
              iconData: Icons.person,
              tileText: 'Edit Profile',
              onpressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
            ),
            const SizedBox(
              height: 13,
            ),
            ProfileTile(
              iconData: Icons.notifications_none,
              tileText: 'Notification',
              onpressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationScreen()));
              },
            ),
            const SizedBox(
              height: 13,
            ),
            ProfileTile(
              iconData: Icons.payment_outlined,
              tileText: 'Payment',
              onpressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CancelBooking()));
              },
            ),
            const SizedBox(
              height: 13,
            ),
            ProfileTile(
              iconData: Icons.privacy_tip_outlined,
              tileText: 'Privacy Policy',
              onpressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PrivacyPolicy()));
              },
            ),
            const SizedBox(
              height: 13,
            ),
            ProfileTile(
              iconData: Icons.person,
              tileText: 'Invite Friends',
              onpressed: () {},
            ),
            const SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.logout,
                    color: Colors.red.shade600,
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  Text(
                    'Log Out',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                      color: Colors.red.shade600,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
