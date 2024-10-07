// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingController1 = TextEditingController();
  double firstNumber = 0;
  double secondNumber = 0;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            TextFormField(
              controller: textEditingController,
              decoration: const InputDecoration(
                label: Text("Number: "),
                hintText: "Write your First number: ",
              ),
            ),
            TextFormField(
              controller: textEditingController1,
              decoration: const InputDecoration(
                label: Text("Number: "),
                hintText: "Write your Second number: ",
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    firstNumber = double.parse(textEditingController.text);
                    secondNumber = double.parse(textEditingController1.text);
                    setState(() {
                      result = firstNumber + secondNumber;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 90,
                    margin: EdgeInsets.only(
                      top: 10.0,
                      left: 10,
                      right: 10,
                      bottom: 10,
                    ),
                    color: Colors.blue,
                    child: const Text(
                      "Add ",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    firstNumber = double.parse(textEditingController.text);
                    secondNumber = double.parse(textEditingController1.text);
                    setState(() {
                      result = firstNumber - secondNumber;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 90,
                    margin: EdgeInsets.only(
                      top: 10.0,
                      left: 10,
                      right: 10,
                      bottom: 10,
                    ),
                    color: Colors.blue,
                    child: const Text(
                      "Subtract ",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    firstNumber = double.parse(textEditingController.text);
                    secondNumber = double.parse(textEditingController1.text);
                    setState(() {
                      result = firstNumber * secondNumber;
                       result = firstNumber * secondNumber;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 90,
                    margin: EdgeInsets.only(
                      top: 10.0,
                      left: 10,
                      right: 10,
                      bottom: 10,
                    ),
                    color: Colors.blue,
                    child: const Text(
                      "Multiply ",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    firstNumber = double.parse(textEditingController.text);
                    secondNumber = double.parse(textEditingController1.text);
                    setState(() {
                      result = firstNumber / secondNumber;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 90,
                    margin: EdgeInsets.only(
                      top: 10.0,
                      left: 10,
                      right: 10,
                      bottom: 10,
                    ),
                    color: Colors.blue,
                    child: const Text(
                      "Divide",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Result: $result  ",
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
