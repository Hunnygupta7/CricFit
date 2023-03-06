import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/colors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Image.asset(
                    "assets/images/1.png",
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "CricFit",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Hello, Guest!",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: blackColor,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Welcome to CricFit",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: blackColor,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Before Continue, Please Sign In",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: blackgreyColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/images/2.png",
                  width: 300,
                  height: 300,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    fillColor: Colors.white,
                    filled: true,
                    hintStyle: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: blackgreyColor,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.visibility_off),
                    hintText: "Password",
                    fillColor: Colors.white,
                    filled: true,
                    hintStyle: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: blackgreyColor,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        value: value,
                        onChanged: (value) {
                          setState(() {
                            value = value;
                          });
                        }),
                    const Text("Rember Me"),
                    const SizedBox(width: 100),
                    const Text("Forgot Password?"),
                  ],
                ),
                Container(
                  width: 350,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: textColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  child: const Text("Tap here if u don't have an account",
                      style: TextStyle(color: blackColor)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
