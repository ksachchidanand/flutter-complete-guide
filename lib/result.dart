import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function reset;
  final int score;

  Result(this.reset, this.score);

  String get persionalty {
    if (score == 29) {
      return 'Perfect!!';
    } else if (score > 26) {
      return 'wow!!';
    } else if (score > 21) {
      return 'ok!!';
    } else if (score > 13) {
      return 'need some change!!';
    } else {
      return 'bad';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: FlatButton(
            onPressed: reset,
            child: Text(
              persionalty,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: FlatButton(
            child: Text(
              'Restart!!!',
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: reset,
          ),
        )
      ],
    );
  }
}
