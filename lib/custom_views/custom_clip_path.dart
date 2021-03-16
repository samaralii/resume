import 'package:flutter/material.dart';

// for more info about custom clip path check this article https://medium.com/flutter-community/flutter-custom-clipper-28c6d380fdd6
class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, 0); // start with top right corner
    path.lineTo(size.width,
        size.height - 20); // top right corner to bottom right corner
    path.lineTo(0, size.height); // bottom right corner to bottom left corner
    path.lineTo(0, 20); // bottom left corner to top left corner
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
