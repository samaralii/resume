import 'package:flutter/material.dart';
import 'package:samaralii/utils/app_const.dart';

class TitleWidget extends StatelessWidget {
  final String text;

  const TitleWidget({Key key, @required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          constraints: BoxConstraints(maxWidth: 100),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 8,
                color: kPrimaryLightColor,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
