import 'dart:async';

import 'package:femmespot/Forgotpassword.dart';
import 'package:femmespot/models/RoundedButtonWidget.dart';
import 'package:femmespot/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pinput/pinput.dart';

class OTP_Screen extends StatefulWidget {
  String? phone;
  String? hash;
  OTP_Screen({Key? key, this.phone, this.hash}) : super(key: key);

  @override
  State<OTP_Screen> createState() => _OTP_ScreenState();
}

class _OTP_ScreenState extends State<OTP_Screen> {
  int count = 60;
  TextEditingController otp = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (count >= 1) {
          count = count - 1;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 16),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgotPassword()));
                      },
                      child: const Icon(Icons.arrow_back)),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Forgot Password',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 220),
            Text('Code has bee send to ${widget.phone}'),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                width: 500,
                child: Pinput(
                  controller: otp,
                  length: 6,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  focusedPinTheme: PinTheme(
                    width: 56,
                    height: 56,
                    textStyle: const TextStyle(
                        fontSize: 17,
                        color: Color.fromRGBO(30, 60, 87, 1),
                        fontWeight: FontWeight.w600),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink.shade500),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  defaultPinTheme: PinTheme(
                    width: 56,
                    height: 56,
                    textStyle: const TextStyle(
                        fontSize: 17,
                        color: Color.fromRGBO(30, 60, 87, 1),
                        fontWeight: FontWeight.w600),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                count == 0
                    ? InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Resend',
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ))
                    : Row(
                        children: [
                          const Text('Resend code in'),
                          Text(
                            ' $count',
                            style: const TextStyle(color: Colors.pink),
                          ),
                          const Text(' s'),
                        ],
                      )
              ],
            ),
            const SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RoundedButtonWidget(
                  buttonText: 'Verify',
                  onpressed: () {
                    Timer(const Duration(seconds: 2), () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NavBar(),
                          ));
                    });
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32.0))),
                            content: SizedBox(
                              height: 270,
                              // height: MediaQuery.of(context).size.height / 2,
                              child: Column(
                                children: [
                                  const Image(
                                    image: NetworkImage(
                                        'https://us.123rf.com/450wm/windlaugh/windlaugh1809/windlaugh180900167/108092086-pink-fur-approval-tick-on-round-frame-original-vector-illustration-stylish-funky-check-mark-logo.jpg',
                                        scale: 6),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text('Congratulations!'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text(
                                    'Your account is ready to use. You will be redirected to the Homepage in a few seconds',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  SpinKitCircle(
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return const DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: Colors.pink
                                            // color: index.isEven ? Colors.red : Colors.green,
                                            ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  width: MediaQuery.of(context).size.width),
            ),
          ],
        ),
      ),
    );
  }
}
