import 'package:femmespot/Forgotpassword.dart';
import 'package:femmespot/GetStarted.dart';
import 'package:femmespot/SignUp.dart';
import 'package:femmespot/data/requests/post.dart';
import 'package:femmespot/models/RoundedButtonWidget.dart';
import 'package:flutter/material.dart';

import 'OTPscreen.dart';
import 'data/urls.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? email;
  String? password;
  bool hidePassword = true;
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Login to Your Account',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: email != null ? Colors.black : Colors.grey,
                      size: 16,
                    ),
                    hintText: "Phone", hintStyle: const TextStyle(fontSize: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(),
                    ),
                    //fillColor: Colors.green
                  ),
                  onChanged: (value) => setState(() => email = value),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  controller: passwordController,
                  cursorColor: Colors.black,
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                      icon: hidePassword == true
                          ? const Icon(
                              Icons.visibility_off,
                              color: Colors.black,
                            )
                          : const Icon(Icons.visibility, color: Colors.black),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: password != null ? Colors.black : Colors.grey,
                      size: 16,
                    ),
                    hintText: "Password",
                    hintStyle: const TextStyle(fontSize: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(),
                    ),
                    //fillColor: Colors.green
                  ),
                  onChanged: (value) => setState(() => password = value),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    value: isChecked,
                    activeColor: Colors.pink,
                    onChanged: (newbool) {
                      setState(() {
                        isChecked = newbool;
                      });
                    },
                  ),
                  const Text(
                    'Remember me',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RoundedButtonWidget(
                    buttonText: 'Sign In',
                    onpressed: () async {
                      var data = {
                        'phone': phoneController.text,
                        'password': passwordController.text
                      };
                      var response = await PostApi()
                          .post(data, UserUrls.postLoginOtp)
                          .then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OTP_Screen(
                                      phone: phoneController.text,
                                    )));
                      });
                      print('response');
                      print(response.toString());
                    },
                    width: MediaQuery.of(context).size.width),
              ),
              const SizedBox(
                height: 8,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPassword()));
                  },
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(color: Colors.pink),
                  )),
              const SizedBox(
                height: 17,
              ),
              const Text(
                'or continue with',
                style: TextStyle(color: Colors.black54),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GetStarted()),
                        );
                      },
                      child: Container(
                          child: Image.network(
                        'https://1000logos.net/wp-content/uploads/2021/04/Facebook-logo.png',
                        scale: 90,
                      ))),
                  const SizedBox(
                    width: 55,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GetStarted()),
                        );
                      },
                      child: Container(
                          child: Image.network(
                        'https://static.vecteezy.com/system/resources/previews/010/353/285/original/colourful-google-logo-on-white-background-free-vector.jpg',
                        scale: 70,
                      ))),
                  const SizedBox(
                    width: 55,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GetStarted()),
                        );
                      },
                      child: Container(
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/1667px-Apple_logo_black.svg.png',
                          scale: 80,
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()));
                        print('hi');
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w200,
                            color: Colors.black),
                      )),
                ],
              )
            ],
          ),
        ));
  }
}
