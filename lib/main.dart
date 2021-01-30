import 'package:exam_quiz_app/screens/main_route_screen.dart';
import 'package:exam_quiz_app/screens/quiz_screen.dart';
import 'package:exam_quiz_app/screens/result_screen.dart';
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
      initialRoute: MainScreen.id,
      routes: {
        MainScreen.id: (context) => MainScreen(),
        QuizScreen.id: (context) => QuizScreen(),
        ResultScreen.id: (context) => ResultScreen(),
      },
    );
  }
}
