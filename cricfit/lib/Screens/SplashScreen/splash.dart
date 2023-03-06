import 'dart:async';

import 'package:cricfit/Constants/colors.dart';
import 'package:cricfit/Screens/Authentication/signin.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:show_up_animation/show_up_animation.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const SignInScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ShowUpAnimation(
            delayStart: const Duration(seconds: 2),
            animationDuration: const Duration(seconds: 2),
            curve: Curves.bounceIn,
            direction: Direction.vertical,
            offset: 0.5,
            child: SizedBox(
              height: 250,
              width: 250,
              child: Image.asset("assets/images/1.png"),
            ),
          ),
          ShowUpAnimation(
            delayStart: const Duration(seconds: 2),
            animationDuration: const Duration(seconds: 2),
            curve: Curves.bounceIn,
            direction: Direction.vertical,
            offset: 0.5,
            child: const Text(
              "CricFit",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
          ),
          ShowUpAnimation(
            delayStart: const Duration(seconds: 2),
            animationDuration: const Duration(seconds: 2),
            curve: Curves.slowMiddle,
            direction: Direction.vertical,
            offset: 0.5,
            child: const Text(
              "STAY ON TOP",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: blackColor,
              ),
            ),
          )
        ],
      )),
    );
  }
}
