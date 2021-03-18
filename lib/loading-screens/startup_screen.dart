import 'dart:async';
import 'package:exam_quiz_app/screens/main_screen.dart';
import 'package:flutter/material.dart';

import 'package:exam_quiz_app/constants.dart';

class StartUpScreen extends StatefulWidget {
  static String id = "startup_screen";
  @override
  _StartUpScreenState createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartUpScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
        () => Navigator.pushReplacementNamed(context, MainScreen.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(color: kMainThemeColor),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 100.0,
                      child: Text(
                        "QA",
                        style: TextStyle(color: kMainThemeColor, fontSize: 90),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "Quiz App",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    backgroundColor: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    ));
  }
}
