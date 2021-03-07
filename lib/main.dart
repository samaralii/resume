import 'package:flutter/material.dart';
import 'package:samaralii/coming_soon.dart';
import 'package:samaralii/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samaralii/utils/app_const.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Samar Ali',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          primaryColorDark: kPrimaryDarkColor,
          primaryColorLight: kPrimaryLightColor,
          backgroundColor: kBackgroundColor,
          textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)),
      // home: Home(),
      home: CommingSoon(),
    );
  }
}
