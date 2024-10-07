// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MultiplicationTable extends StatefulWidget {
  const MultiplicationTable({super.key});

  @override
  State<MultiplicationTable> createState() => _MultiplicationTableState();
}

class _MultiplicationTableState extends State<MultiplicationTable> {
  TextEditingController textEditingController = TextEditingController();
  int number = 1;
  List<String> results = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            TextFormField(
              controller: textEditingController,
              decoration: InputDecoration(
                label: Text("Enter a number : "),
                hintText:
                    "Write a number whose multiplication table is to be written: ",
              ),
            ),
            InkWell(
              onTap: () {
                results.clear();
                number = int.parse(textEditingController.text);
                for (int i = 1; i <= 10; i++) {
                  int result = number * i;
                  results.add("$number x $i = $result");
                }
                setState(() {});
              },
              child: Container(
                height: 30,
                width: 100,
                margin: EdgeInsets.only(
                  top: 10.0,
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                color: Colors.blue,
                child: const Text(
                  "Submit ",
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
            ...List.generate(results.length, (i) {
              return Text(
                results[i],
                textDirection: TextDirection.ltr,
              );
            })
          ],
        ),
      ),
    );
  }
}
