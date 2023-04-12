import 'package:cricfit/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            appBar(),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return exerciseCard();
                },
              ),
            )
          ],
        ),
      )),
    );
  }

  Widget appBar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Good Morning",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 20),
        ),
        Text(
          "Saurabh",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        )
      ],
    );
  }

  Widget roleChoosen() {
    return const Text("Batsman",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w200,
          fontSize: 20,
        ));
  }

  Widget exerciseCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 0.01,
                      offset: Offset(0, 5))
                ]),
            child: Row(
              children: [
                Image.asset(
                  "assets/videos/squat.gif",
                  height: 100,
                  width: 100,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text(
                    "High Stepping",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    "3 sets of 15 reps on each leg",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w200,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SimpleAnimationProgressBar(
                    height: 20,
                    width: 200,
                    backgroundColor: Color(0xffFBCEB1),
                    foregrondColor: textColor,
                    ratio: 0.5,
                    direction: Axis.horizontal,
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: const Duration(seconds: 3),
                    borderRadius: BorderRadius.circular(4),
                  )
                ])
              ],
            ),
          ),
          Container(
            height: 20,
            width: 120,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )),
            child: const Text("Intermediate",
                style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
