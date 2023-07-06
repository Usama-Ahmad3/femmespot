import 'package:femmespot/OTPscreen.dart';
import 'package:femmespot/SignIn.dart';
import 'package:femmespot/models/RoundedButtonWidget.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                              builder: (context) => const SignIn()));
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
          const SizedBox(
            height: 40,
          ),
          Container(
              height: 230,
              width: double.infinity,
              child: Image.asset(
                'assets/images/GS.jpg',
                fit: BoxFit.fitHeight,
              )),
          // SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.only(top: 40, left: 16),
            child: Text(
                'Select which contact details should we use to reset your password'),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 110,
            //color: Colors.red,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.pink.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                        'http://cdn.onlinewebfonts.com/svg/img_419896.png',
                        scale: 30),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'via SMS',
                      style: TextStyle(fontSize: 13, color: Colors.black54),
                    ),
                    Text('+11*******9'),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 110,
            //color: Colors.red,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.pink.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                        'https://d1k5j68ob7clqb.cloudfront.net/processed/meta/U58o0Y2xeB7uxwNjS8.png',
                        scale: 20),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 90),
                      child: Text(
                        'via Email',
                        style: TextStyle(fontSize: 13, color: Colors.black54),
                      ),
                    ),
                    Text('engr.ssss@gmail.com'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: RoundedButtonWidget(
                buttonText: 'Continue',
                onpressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OTP_Screen()));
                },
                width: MediaQuery.of(context).size.width),
          ),
        ],
      ),
    );
  }
}
