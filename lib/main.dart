// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(141, 0, 0, 0),
        appBar: AppBar(
          toolbarHeight: 250.0,
          centerTitle: true,
          title: Text(
            "What's next???",
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(141, 0, 0, 0),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  void changeIndex() {
    print("clicked");
    setState(
      () {
        index = Random().nextInt(8) + 1;
      },
    );
  }

  @override
  int index = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeIndex();
              },
              child: Image.asset('images/app$index.png'),
            ),
          )
        ],
      ),
    );
  }
}
