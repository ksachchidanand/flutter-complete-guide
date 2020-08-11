import 'package:flutter/material.dart';

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
  static var _questions = [
    {
      'question': 'What\'s your favorite color',
      'answers': ['White', 'Green', 'Orange', 'Blue'],
    },
    {
      'question': 'What\'s your favorite animal',
      'answers': ['Lion', 'Elephant', 'Bear'],
    },
  ];

  var _questionIndex = 0;

  void _answerChosen() {
    setState(() {
      _questionIndex++;
    });
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyFirstApp'),
          leading: Icon(Icons.menu),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerChosen: _answerChosen,
              )
            : Result(_reset),
      ),
    );
  }
}
