import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String options;
  final Function answer;

  Answer(this.options, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: RaisedButton(
        onPressed: answer,
        color: Colors.blue,
        child: Text(
          options,
        ),
      ),
    );
  }
}
