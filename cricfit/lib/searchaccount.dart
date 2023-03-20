import 'package:cricfit/colors.dart';
import 'package:flutter/material.dart';

class searchaccount extends StatefulWidget {
  const searchaccount({super.key});

  @override
  State<searchaccount> createState() => _searchaccountState();
}

class _searchaccountState extends State<searchaccount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background_color,
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 25.0,
                height: 25.0,
                decoration: const BoxDecoration(
                  color: orange,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Type your E-mail, Phone Number, or Username",
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Help us to find your Account",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  alignment: Alignment.center,
                  child: Image.asset("assets/search_account.png",
                      width: 400, height: 250)),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "E-mail / Phone Number / Username",
                    contentPadding: const EdgeInsets.symmetric(
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
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "SEARCH",
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 150),
                    hintStyle: TextStyle(color: white),
                    filled: true,
                    fillColor: orange,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
