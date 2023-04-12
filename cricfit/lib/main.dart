import 'package:cricfit/Screens/InAppScreens/roleslection.dart';
import 'package:cricfit/Screens/onBoardingScreen/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/SplashScreen/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        home: const RoleSelector());
  }
}
