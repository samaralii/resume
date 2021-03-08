import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:samaralii/utils/app_const.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Widget _body() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: kDefaultPadding, left: kDefaultPadding, bottom: 2),
              child: Text(
                "Samar ali".toUpperCase(),
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    letterSpacing: 2),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: kDefaultPadding, bottom: 10),
              child: Text(
                "Mobile Application Developer",
                style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 13,
                    color: Colors.grey.shade600),
              ),
            ),
            Container(
              height: 200,
              child: ClipPath(
                child: Container(
                  color: Colors.red,
                ),
                clipper: CustomClipPath(),
              ),
            ),
            Container(
              height: kDefaultPadding,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _body();
  }
}

// for more info about custom clip path check this article https://medium.com/flutter-community/flutter-custom-clipper-28c6d380fdd6
class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, 0); // start with top right corner
    path.lineTo(size.width,
        size.height - 20); // top right corner to buttom right corner
    path.lineTo(0, size.height); // bottom right corner to bottom left corner
    path.lineTo(0, 20); // bottom left corner to top left corner
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
