import 'package:flutter/material.dart';

import 'package:flutter_complete_guide/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<String> _questions = [
    'What\'s your favorite color',
    'What\'s your favorite animal',
  ];

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
              _questions[1],
            ),
            RaisedButton(
              onPressed: null,
              child: Text('answer1'),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('answer1'),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('answer1'),
            ),
          ],
        ),
      ),
    );
  }
}
