import 'package:exam_quiz_app/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:exam_quiz_app/model/exam_Quiz_brain.dart';

ExamQuizBrain quizBrain = ExamQuizBrain();

class QuizScreen extends StatefulWidget {
  static String id = 'quiz_screen';
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Icon> scoreKeeper = [];
  int correctAnswers = 0;
  int wrongAnswers = 0;
  void checkAnswer(int userPickedAnswer) {
    int correctAnswer = quizBrain.getCorrectAnswer();
    setState(() {
      if (userPickedAnswer == correctAnswer) {
        scoreKeeper.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
        correctAnswers++;
      } else {
        scoreKeeper.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
        wrongAnswers++;
      }
      if (quizBrain.isFinished()) {
        quizBrain.reset();
        scoreKeeper.removeRange(0, scoreKeeper.length);
        double percent =
            (correctAnswers / (correctAnswers + wrongAnswers)) * 100;
        Navigator.pushNamed(context, ResultScreen.id, arguments: percent);
      } else {
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quizBrain.getQuestionText(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ),
          questionOptionLayout(0),
          questionOptionLayout(1),
          questionOptionLayout(2),
          questionOptionLayout(3),
          Row(
            children: scoreKeeper,
          )
        ],
      ),
    );
  }

  Expanded questionOptionLayout(int option) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: FlatButton(
          padding: EdgeInsets.all(10.0),
          onPressed: () {
            checkAnswer(option);
          },
          textColor: Colors.white,
          color: Colors.green,
          child: Text(
            quizBrain.getQuestionOptions()[option],
            style: TextStyle(fontSize: 20.0),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        ),
      ),
    );
  }
}
