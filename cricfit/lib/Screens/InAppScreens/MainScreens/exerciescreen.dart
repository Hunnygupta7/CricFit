import 'package:flutter/material.dart';

class ExerciseScreen extends StatefulWidget {
  const ExerciseScreen({super.key});

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff),
      body: Container(
          child: Column(
        children: const [
          Text("Exercise Screen"),
        ],
      )),
    );
  }
}
