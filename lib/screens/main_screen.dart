import 'package:exam_quiz_app/constants.dart';
import 'package:exam_quiz_app/screens/quiz_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static String id = 'main_screen_id';
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exam Quiz App'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Icon(
                Icons.account_circle,
                size: 100.0,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, QuizScreen.id);
                },
                child: Text('Start Quiz', style: kMainScreenButtonTextStyle),
                color: Colors.green,
                padding: EdgeInsets.all(20.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
