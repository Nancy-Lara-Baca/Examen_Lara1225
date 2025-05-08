import 'package:flutter/material.dart';

class Clip_Oval extends StatelessWidget {
  const Clip_Oval({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Wrap with Scaffold
      appBar: AppBar(
        // Add the AppBar
        title: const Text(
          'Clip_Oval',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: const Color(0xff9e85a8),
        centerTitle: true,
      ),
      body: Center(
        //  The original Center becomes the body
        child: ClipOval(
          clipper: CustomClip(),
          child: Container(
            width: 80,
            height: 80,
            color: Colors.orangeAccent,
          ),
        ),
      ),
    );
  }
}

class CustomClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, size.width - 15, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
