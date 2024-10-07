import 'package:flutter/material.dart';

class MyRed extends StatefulWidget {
  const MyRed({super.key});

  @override

  State<MyRed> createState() => _MyRedState();
}

class _MyRedState extends State<MyRed> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 230,
          width: 200,
          color: Colors.blue,
        )
      ],
    );
  }
}