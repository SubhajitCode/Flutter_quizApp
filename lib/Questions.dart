import 'package:flutter/material.dart';
import 'Quiz.dart';

class QuestionWidget extends StatelessWidget {
  final Question question;
  QuestionWidget(this.question);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        question.questionText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
