import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerChosen() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite colour?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My First App',
          ),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions.elementAt(_questionIndex),
            ),
            Answer(_answerChosen),
            Answer(_answerChosen),
            Answer(_answerChosen),
          ],
        ),
      ),
    );
  }
}
