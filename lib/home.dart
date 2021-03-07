import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_resume/utils/app_const.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _body() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 70, horizontal: 100),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.black,
              height: 1000,
            ),
          ),
          Container(
            width: 20,
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.black,
              height: 1000,
            ),
          ),
        ],
      ),
    );
  }

  //navigation bar
  Widget _navigationBar() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor.shade200,
      body: SingleChildScrollView(child: _body()),
    );
  }
}
