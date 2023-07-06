import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, backgroundColor: Colors.transparent, iconTheme: IconThemeData(color: Colors.black),
        title: Text('Notification', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 18),),
      ),
      body: Column(
        children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Text('General Notification', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
              Spacer(),
              Switch.adaptive(
                  activeColor: Colors.pink,
                  value: value, onChanged: (val){
                value=val;
              }),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
