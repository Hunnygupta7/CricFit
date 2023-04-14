import 'dart:ui';

import 'package:cricfit/Constants/colors.dart';
import 'package:flutter/material.dart';

class ExcersiseScreen extends StatefulWidget {
  const ExcersiseScreen({super.key});

  @override
  State<ExcersiseScreen> createState() => _ExcersiseScreenState();
}

class _ExcersiseScreenState extends State<ExcersiseScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff192126),
        bottomNavigationBar: Container(
          width: 200,
          height: 50,
          decoration: BoxDecoration(
              color: textColor, borderRadius: BorderRadius.circular(0)),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Let's Workout",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.only(left: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                appBar(),
                const SizedBox(
                  height: 30,
                ),
                imageBody(),
                const SizedBox(
                  height: 30,
                ),
                textbody(),
                const SizedBox(
                  height: 20,
                ),
                centerText(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return exerciseCard();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget appBar() {
    return Container(
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.28,
          ),
          const Text(
            "Workout",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget imageBody() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: 350,
          height: 310,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage(
                "assets/videos/squat.gif",
              ),
              fit: BoxFit.cover,
            ),
            color: Colors.white,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 40), // Add a negative margin
          width: 300,
          height: 80, // adjust the height to fit the new rows
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xff192126),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: textColor,
                        ),
                        child: const Icon(
                          Icons.timer,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Time",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text("20 min",
                              style: TextStyle(color: textColor, fontSize: 15)),
                        ],
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: textColor,
                        ),
                        child: const Icon(
                          Icons.local_fire_department_rounded,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Burn",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text("95 Kcal",
                              style: TextStyle(color: textColor, fontSize: 15)),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget textbody() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Lower body training",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            width: 350,
            child: const Text(
              "The lower abdomen and hips are the most difficult areas of the body to reduce when we are on a diet. Even so, in this area, especially the legs as a whole, you can reduce weight even if you don't use tools.",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                  color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

  Widget centerText() {
    return Container(
        margin: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Rounds",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text("1/8", style: TextStyle(color: Colors.white, fontSize: 25)),
          ],
        ));
  }

  Widget exerciseCard() {
    return Container(
      width: 400,
      height: 90,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff384046),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: NetworkImage(
                    "https://hips.hearstapps.com/hmg-prod/images/healthy-lifestyle-exercising-and-people-concepts-royalty-free-image-1647617548.jpg?crop=1.00xw:1.00xh;0,0&resize=2048:*"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                "Squats",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "20 sec",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w200),
              ),
            ],
          ),
          const Spacer(),
          const CircleAvatar(
            backgroundColor: Color(0xff192126),
            child: Icon(
              Icons.play_arrow,
              color: textColor,
            ),
          )
        ],
      ),
    );
  }
}
