import 'package:cricfit/LetsGo.dart';
import 'package:cricfit/Welcome.dart';
import 'package:cricfit/searchAccount.dart';
import 'package:cricfit/signUp.dart';
import 'package:cricfit/verifyaccount.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Personalized.dart';
import 'Profile.dart';
import 'SplashScreen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CricFit',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.montserrat().fontFamily,
        ),
        home: Profile());
  }
}
