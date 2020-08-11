import 'package:flutter/material.dart';

import 'package:flutter_complete_guide/question.dart';
import 'package:flutter_complete_guide/answer.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final Function answerChosen;

  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerChosen,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['question'],
        ),
        ...(questions[questionIndex]['answers'] as List<Object>)
            .map((answer) => Answer(answer, answerChosen))
            .toList()
      ],
    );
  }
}
