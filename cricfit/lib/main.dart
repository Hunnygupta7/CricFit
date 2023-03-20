import 'package:cricfit/searchAccount.dart';
import 'package:cricfit/signUp.dart';
import 'package:cricfit/verifyaccount.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
<<<<<<< HEAD
import 'Screens/SplashScreen/splash.dart';
=======
>>>>>>> origin/master

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
        title: 'CricFit',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.montserrat().fontFamily,
        ),
        home: const Splash());
=======
      title: 'CricFit',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: Colors.blue,
      ),
      home: verifyaccount(),
    );
>>>>>>> origin/master
  }
}
