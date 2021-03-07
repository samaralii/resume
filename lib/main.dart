import 'package:flutter/material.dart';
import 'package:flutter_resume/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Home(),
    );
  }
}
