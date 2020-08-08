import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerChosen() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
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
              questions.elementAt(questionIndex),
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerChosen,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                // >>>
                print('Answer 3 chosen!');
              },
            ),
            RaisedButton(
              child: Text('Answer 4'),
              onPressed: answerChosen,
            ),
          ],
        ),
      ),
    );
  }
}
