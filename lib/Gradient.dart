import 'package:flutter/material.dart';

class RadiantGradientMask extends StatelessWidget {
  RadiantGradientMask({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const RadialGradient(
        center: Alignment.center,
        radius: 0.5,
        colors: [
          Colors.deepOrange, Colors.pink
          // Colors.redAccent,
          // Colors.pink,
          // Colors.redAccent,
          // Colors.deepOrange,
          // Colors.pink,
          //Colors.redAccent,
        ],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}
