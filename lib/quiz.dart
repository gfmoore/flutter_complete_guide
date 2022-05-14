import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;

  const Quiz({required this.questions, required this.answerQuestion, required this.questionIndex});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]['questionText'].toString(),
        ),

        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text'] as String);
        }).toList(), //answers
      ],
    );
  }
}
