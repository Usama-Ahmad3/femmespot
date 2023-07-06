import 'package:femmespot/SignIn.dart';
import 'package:femmespot/data/urls.dart';
import 'package:femmespot/models/RoundedButtonWidget.dart';
import 'package:femmespot/res/toastmessage.dart';
import 'package:flutter/material.dart';

import 'data/requests/post.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController birthController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    birthController.dispose();
    cityController.dispose();
    addressController.dispose();
    phoneController.dispose();
  }

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
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Create Your Account',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextFormField(
                    controller: nameController,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      filled: true,
                      //fillColor:Colors.transparent,
                      contentPadding: const EdgeInsets.only(
                          left: 10, right: 10, top: 15, bottom: 20),
                      hintText: "Full Name",
                      hintStyle: const TextStyle(fontSize: 12),
                      fillColor: Colors.grey[100],
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(
                      Icons.email,
                      color: email != null ? Colors.black : Colors.grey,
                      size: 16,
                    ),
                    hintText: "Phone", hintStyle: const TextStyle(fontSize: 12),
                    fillColor: Colors.grey[100],
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    contentPadding: const EdgeInsets.only(
                        left: 10, right: 10, top: 15, bottom: 20),
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
                  cursorColor: Colors.black,
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                    filled: true,
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
                    contentPadding: const EdgeInsets.only(
                        left: 10, right: 10, top: 15, bottom: 20),
                    hintStyle: const TextStyle(fontSize: 12),
                    fillColor: Colors.grey[100],
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  onChanged: (value) => setState(() => password = value),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextFormField(
                  controller: cityController,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    filled: true,
                    suffixIcon: Icon(
                      Icons.check_circle_outline,
                      color: email != null ? Colors.black : Colors.grey,
                      size: 20,
                    ),
                    contentPadding: const EdgeInsets.only(
                        left: 10, right: 10, top: 15, bottom: 20),
                    hintText: "City",
                    hintStyle: const TextStyle(fontSize: 12),
                    fillColor: Colors.grey[100],
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                  ),
                  onChanged: (value) => setState(() => email = value),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextFormField(
                  controller: addressController,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    filled: true,
                    suffixIcon: Icon(
                      Icons.check_circle_outline,
                      color: email != null ? Colors.black : Colors.grey,
                      size: 20,
                    ),
                    contentPadding: const EdgeInsets.only(
                        left: 10, right: 10, top: 15, bottom: 20),
                    hintText: "Address",
                    hintStyle: const TextStyle(fontSize: 12),
                    fillColor: Colors.grey[100],
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                  ),
                  onChanged: (value) => setState(() => email = value),
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
                    onChanged: (newBool) {
                      setState(() {
                        isChecked = newBool;
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
                    buttonText: 'Sign Up',
                    onpressed: () async {
                      var data = {
                        'name': nameController.text,
                        'phone': phoneController.text,
                        'password': passwordController.text,
                        'city': cityController.text,
                        'address': addressController.text
                      };
                      await PostApi()
                          .postApi(data, UserUrls.postUserSignup)
                          .then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignIn(),
                            ));
                        Utils.toastMessage('Signup Successful');
                      });
                    },
                    width: MediaQuery.of(context).size.width),
              ),
              const SizedBox(
                height: 30,
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
                      onTap: () {},
                      child: Container(
                          child: Image.network(
                        'https://1000logos.net/wp-content/uploads/2021/04/Facebook-logo.png',
                        scale: 90,
                      ))),
                  const SizedBox(
                    width: 55,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: Container(
                          child: Image.network(
                        'https://static.vecteezy.com/system/resources/previews/010/353/285/original/colourful-google-logo-on-white-background-free-vector.jpg',
                        scale: 70,
                      ))),
                  const SizedBox(
                    width: 55,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/1667px-Apple_logo_black.svg.png',
                          scale: 80,
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 45,
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
                                builder: (context) => const SignIn()));
                      },
                      child: const Text(
                        "Sign In",
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
