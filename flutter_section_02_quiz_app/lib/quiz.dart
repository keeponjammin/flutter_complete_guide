import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> quizQuestions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.quizQuestions,
      @required this.answerQuestion,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          quizQuestions[questionIndex]['questionText'],
        ),
        ...(quizQuestions[questionIndex]['answers']
                as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
