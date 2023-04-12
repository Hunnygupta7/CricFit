import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/colors.dart';

class ThankyouScreenFP extends StatefulWidget {
  const ThankyouScreenFP({super.key});

  @override
  State<ThankyouScreenFP> createState() => _ThankyouScreenFPState();
}

class _ThankyouScreenFPState extends State<ThankyouScreenFP> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundColor: textColor,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Thank you, Avery Davis! Reset your Password",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Must be at least 8 characters",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: blackColor,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/5.png",
                    width: 300,
                    height: 300,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.visibility),
                      hintText: "Password",
                      hintStyle: const TextStyle(),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextField(
                    controller: confirmPasswordController,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.visibility),
                      hintText: "Confirm Password",
                      hintStyle: const TextStyle(),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () async {
                    if (passwordController.text ==
                        confirmPasswordController.text) {
                      try {
                        await user!.updatePassword("new-password");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              backgroundColor: Colors.green,
                              content: Text(
                                "Password updated",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )),
                        );
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(
                              "Failed to update password",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Passwords do not match"),
                        ),
                      );
                    }
                  },
                  child: Container(
                    width: 350,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: textColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Center(
                      child: Text(
                        "RESET PASSWORD",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
