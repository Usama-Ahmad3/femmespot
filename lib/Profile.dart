import 'package:femmespot/models/RoundedButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'data/urls.dart';

class Profile extends StatefulWidget {
  Profile({
    Key? key,
  }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? email;
  String? dob;
  String? gender;
  final genders = ['Male', 'Female'];
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // if (UserUrls.requestedData != null || UserUrls.requestedData != '') {
    //   nameController.text = UserUrls.requestedData['user']['name'].toString();
    //   passwordController.text =
    //       UserUrls.requestedData['user']['password'].toString();
    //   cityController.text = UserUrls.requestedData['user']['city'].toString();
    //   addressController.text =
    //       UserUrls.requestedData['user']['address'].toString();
    //   phoneController.text = UserUrls.requestedData['user']['phone'].toString();
    // }
    // null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Fill your Profile',
          style: TextStyle(
              color: Colors.black, fontSize: 19, fontWeight: FontWeight.w900),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Stack(
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
            const SizedBox(
              height: 30,
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
              padding: const EdgeInsets.all(14.0),
              child: TextFormField(
                  controller: emailController,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    filled: true,
                    //fillColor:Colors.transparent,
                    contentPadding: const EdgeInsets.only(
                        left: 10, right: 10, top: 15, bottom: 20),
                    hintText: "Email",
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
              padding: const EdgeInsets.all(14.0),
              child: TextFormField(
                controller: passwordController,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  filled: true,
                  // suffixIcon: Icon(Icons.calendar_today_outlined, size: 16,color: dob != null ? Colors.black : Colors.grey,),
                  contentPadding: const EdgeInsets.only(
                      left: 10, right: 10, top: 15, bottom: 20),
                  hintText: "Password",
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
                onChanged: (value) => setState(() => dob = value),
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
            // Padding(
            //   padding: const EdgeInsets.all(14.0),
            //   child: DropdownButtonFormField(
            //       value: gender,
            //       decoration: InputDecoration(
            //         filled: true,
            //         contentPadding: const EdgeInsets.only(
            //             left: 10, right: 10, top: 15, bottom: 20),
            //         hintText: "Select Gender",
            //         hintStyle: const TextStyle(fontSize: 12),
            //         fillColor: Colors.grey[100],
            //         focusedBorder: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(12.0),
            //           borderSide: const BorderSide(color: Colors.transparent),
            //         ),
            //         enabledBorder: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(12.0),
            //           borderSide: const BorderSide(color: Colors.transparent),
            //         ),
            //       ),
            //       items: genders.map((String e) {
            //         return DropdownMenuItem(value: e, child: Text(e));
            //       }).toList(),
            //       onChanged: (value) => setState(() {
            //             gender = value as String;
            //           })),
            // ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: IntlPhoneField(
                controller: phoneController,
                // dropdownIconPosition: IconPosition.trailing,
                dropdownIcon: const Icon(Icons.keyboard_arrow_down_outlined),

                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  hintStyle: const TextStyle(),
                  filled: true,
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
                initialCountryCode: 'PK',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RoundedButtonWidget(
                  buttonText: 'Continue',
                  onpressed: () async {
                    print('hi');
                  },
                  width: MediaQuery.of(context).size.width),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
