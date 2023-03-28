import 'package:cricfit/colors.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // Define form controllers
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _phoneController = TextEditingController();

  // Define form key
  final _formKey = GlobalKey<FormState>();

  // Define submit function
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // TODO: Add code to create account
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: background_color,
          body: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Image.asset(
                    "assets/icon.png",
                    width: 30,
                    height: 30,
                  ),
                  const Text(
                    " CricFit",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, color: orange),
                  )
                ]),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Don't have an Account?",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                ),
                const Text(
                  "Create your Account",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "It's quick and easy.",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "First Name",
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 40),
                          hintStyle: TextStyle(),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16), // Replace with your desired size
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Last Name",
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 40),
                          hintStyle: TextStyle(),
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
                SizedBox(
                  height: 30,
                ),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: "Email Address",
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                )),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: "Email Address",
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                )),
              ],
            ),
          )),
    );
  }
}
