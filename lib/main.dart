import 'package:exam_quiz_app/loading-screens/startup_screen.dart';
import 'package:exam_quiz_app/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exam Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: StartUpScreen.id,
      routes: {
        MainScreen.id: (context) => MainScreen(),
        StartUpScreen.id: (context) => StartUpScreen(),
      },
    );
  }
}
