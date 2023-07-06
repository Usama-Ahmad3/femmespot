import 'package:femmespot/callscreen.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String? search;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Barbella Inova',
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CallScreen()));
                      },
                      child: const Icon(
                        Icons.call_outlined,
                        color: Colors.black,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.black,
                  ),
                ],
              ),
            )
          ],
        ),
        // aur kuch? no/ thk hai
        body: SizedBox(
          height: MediaQuery.of(context).size.height, // screen height define ki
          // screenshot
          child: Stack(
            // stack lagaya
            children: [
              // pehle messages show krwaye list mein
              Padding(
                padding: const EdgeInsets.only(bottom: 80), //
                child: ListView.builder(
                  itemCount: 20,
                  reverse: true,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20, bottom: 12),
                        child: Container(
                          height: 55,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.pink.shade200,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(18),
                              bottomLeft: Radius.circular(18),
                              bottomRight: Radius.circular(18),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 10),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Hi,Good Morning',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Spacer(),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text(
                                      '10:00',
                                      style: TextStyle(fontSize: 11),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              // phir bottom kr text field ko align kr diya, screen ke bottom pr iss liye aa rahi hai ke
              // screen height khatam karo ge tw wapis top pr aa jaye ga!
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 50,
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        fillColor: Colors.grey,
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.photo,
                                color: Colors.grey,
                                size: 19,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.mic,
                                color: Colors.grey,
                                size: 19,
                              ),
                            ],
                          ),
                        ),
                        hintText: "Message",
                        hintStyle: const TextStyle(fontSize: 12),
                        //fillColor: Colors.green
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
