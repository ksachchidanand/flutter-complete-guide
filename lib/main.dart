import 'package:flutter/material.dart';

import 'package:flutter_complete_guide/questionList.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static var _questions = QuestionList().questionList;

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerChosen(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('MyFirstApp'),
          leading: Icon(Icons.menu),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerChosen: _answerChosen,
              )
            : Result(_reset, _totalScore),
      ),
    );
  }
}
