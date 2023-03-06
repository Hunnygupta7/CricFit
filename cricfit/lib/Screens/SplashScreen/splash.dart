import 'package:cricfit/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
            width: 300,
            child: Lottie.asset("assets/animation.json"),
          ),
          const Text(
            "CricFit",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
          const Text(
            "STAY ON TOP",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: blackColor,
            ),
          )
        ],
      )),
    );
  }
}
