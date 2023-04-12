import 'package:flutter/material.dart';

class ExcersiseScreen extends StatefulWidget {
  const ExcersiseScreen({super.key});

  @override
  State<ExcersiseScreen> createState() => _ExcersiseScreenState();
}

class _ExcersiseScreenState extends State<ExcersiseScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text("Excersise Screen"),
    ));
  }
}
