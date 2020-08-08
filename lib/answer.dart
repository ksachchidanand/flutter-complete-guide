import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          'Answer 1',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
