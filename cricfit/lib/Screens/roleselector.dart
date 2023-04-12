import 'package:cricfit/Constants/colors.dart';
import 'package:flutter/material.dart';

class RoleSelector extends StatefulWidget {
  const RoleSelector({super.key});

  @override
  State<RoleSelector> createState() => _RoleSelectorState();
}

class _RoleSelectorState extends State<RoleSelector> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              titleText(),
              const SizedBox(
                height: 20,
              ),
              choicedesign("BATSMAN", "assets/images/role1.png"),
              choicedesign("BOWLER", "assets/images/role2.png"),
              choicedesign("ALL ROUNDER", "assets/images/role3.png")
            ],
          ),
        ),
      ),
    );
  }

  Widget titleText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 200,
          child: Text(
            "Select Your ",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Cricket ",
              style: TextStyle(
                  fontSize: 35, color: textColor, fontWeight: FontWeight.bold),
            ),
            Text(
              "Role ",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }

  Widget choicedesign(String title, String image) {
    return Container(
      width: 350,
      height: 150,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Color(0xffFE735C), Color(0xffC1272D)]),
          color: textColor,
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Image.asset(
            image,
            width: 120,
            height: 120,
          )
        ],
      ),
    );
  }
}
