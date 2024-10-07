// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:image_applicaton/form.dart';
import 'package:image_applicaton/multiplication.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MultiplicationTable());
  }
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.grey,
          height: 400,
          width: 450,
          child: Column(children: [
            //      SizedBox(
            //   height: 105,
            //   width:85,
            // ),
            Image.network("https://api.trishaheed.edu.np/storage/students/J1kGHUeOGMXeIdFaddEKvhTGwTOGtBpB8XiNlcZY.jpg",
              height: 100,
              width: 450,
            ),

            Text(
              "Anis Bishowkarma",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w100,
                color: Colors.black,
              ),
            ),
            Text(
              "Student,Class 10",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w100,
                color: Colors.orange,
              ),
            ),

            Text(
              " What makes this school special is the sense of community. The teachers are genuinely invested in our success, and the environment is supportive, both academically and emotionally. I feel prepared for the future because of the values and skills I’ve learned here.",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w100,
                color: Colors.black,
              ),
            ),
          ]),
        ),
          
      ],
    );
  }
}
