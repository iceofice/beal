import 'package:beal/screens/landing_page.dart';
import 'package:flutter/material.dart';
import './utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: backgroundColor,
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: secondaryColor,
            ),
        fontFamily: 'Mulish',
      ),
      debugShowCheckedModeBanner: false,
      home: const SafeArea(
        child: LandingPage(),
      ),
    );
  }
}
