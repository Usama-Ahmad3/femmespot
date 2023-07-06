
import 'package:flutter/material.dart';

class RoundedButtonWidget extends StatelessWidget {
  final String buttonText;
  final GestureTapCallback onpressed;
  var width;

  RoundedButtonWidget({
    required this.buttonText,
    required this.onpressed,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        width: width,
        height: 35,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,// ?? nope
            stops:  [0, 0.5],
            colors: [
              Colors.deepOrange,
              Colors.pink,
            ],
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5), //
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: 13,
                // fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ), // ab?hn bht chotta hogya
      ),
    );
  }
}



class RoundedBorderButtonWidget extends StatelessWidget {
  final String buttonText;
  final GestureTapCallback onpressed;
  var width;

  RoundedBorderButtonWidget({
    required this.buttonText,
    required this.onpressed,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        width: width,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.pink, width: 1.5),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5), //
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: 13,
                // fontWeight: FontWeight.w700,
                color: Colors.pink,
              ),
            ),
          ),
        ), // ab?hn bht chotta hogya
      ),
    );
  }
}