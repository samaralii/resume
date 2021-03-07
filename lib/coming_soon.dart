import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommingSoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.construction,
              color: Colors.black,
              size: 50,
            ),
            Text(
              "Coming Soon",
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    ));
  }
}
