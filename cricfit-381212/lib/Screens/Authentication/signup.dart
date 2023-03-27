import 'package:country_list_picker/country_list_picker.dart';
import 'package:flutter/material.dart';

import '../../Constants/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
                  "Don't have an account?",
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
                  "Create your account",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: blackColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "it's quick and easy",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: blackColor,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 170,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "First Name",
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
                    SizedBox(
                      width: 170,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Last Name",
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
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email Address",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 120,
                      child: CountryListPicker(
                        onCountryChanged: ((value) {
                          // do something
                        }),
                        onChanged: (value) {
                          // do something
                        },
                        initialCountry: Countries.Egypt,
                        language: Languages.Arabic,
                        // if you need to hide country title
                        displayName: Names
                            .offical, // if you need to display country offical name
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Phone Number ",
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
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextField(
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
                    const Text("I agree to the"),
                    const Text(
                      "Terms & Conditions",
                      style: TextStyle(
                          color: textColor, fontWeight: FontWeight.bold),
                    ),
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
                      "SIGN UP",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 350,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Center(
                      child: Text(
                        "BACK TO SIGN IN",
                        style: TextStyle(
                          color: textColor,
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
