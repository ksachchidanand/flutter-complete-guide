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
      child: Card(
        color: Colors.blue,
        child: FlatButton(
          onPressed: answer,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              options,
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
