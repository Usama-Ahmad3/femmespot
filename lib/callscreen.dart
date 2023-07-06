import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                  'https://i2.wp.com/therighthairstyles.com/wp-content/uploads/2013/12/18-light-brown-balayage-for-long-hair.jpg?resize=240%2C340&ssl=1'),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Barbella Inova',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            '03:46 minutes',
            style: TextStyle(fontSize: 13),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.pink.shade200,
                  child: const Icon(
                    Icons.call_end_outlined,
                    color: Colors.black,
                    size: 35,
                  )),
              const SizedBox(
                width: 30,
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue.shade300,
                child: const Icon(
                  Icons.videocam_off_outlined,
                  color: Colors.black,
                  size: 35,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.orange.shade400,
                  child: const Icon(
                    Icons.keyboard_voice_outlined,
                    color: Colors.black,
                    size: 35,
                  )),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
