import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function reset;

  Result(this.reset);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: reset,
        child: Center(
          child: Text('You did it!'),
        ),
      ),
    );
  }
}
