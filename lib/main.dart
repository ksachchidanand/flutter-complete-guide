import 'package:flutter/material.dart';

import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyFirstApp'),
          leading: Icon(Icons.menu),
        ),
        body: Column(
          children: [
            Question(
              _questions[_questionIndex]['question'],
            ),
            ...(_questions[_questionIndex]['answers'] as List<Object>)
                .map((answer) => Answer(answer, _answerChosen))
                .toList()
          ],
        ),
      ),
    );
  }
}
