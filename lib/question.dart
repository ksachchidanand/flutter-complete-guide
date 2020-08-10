import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questions;

  Question(this._questions);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        _questions,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
