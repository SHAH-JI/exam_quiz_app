import 'package:exam_quiz_app/screens/quiz_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  static String id = 'result_screen';
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    final double percent = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.lightGreen,
        child: Center(
          child: Container(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    percent.toString() + '%',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                FlatButton(
                  padding: EdgeInsets.all(10.0),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.green,
                  child: Text('Retry',
                      style: TextStyle(fontSize: 30.0, color: Colors.white)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
