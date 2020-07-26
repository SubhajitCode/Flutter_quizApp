import 'package:flutter/material.dart';

import 'Quiz.dart';

class AnswerWidget extends StatelessWidget {
  final Question question;
  final Function onClickHandler;
  AnswerWidget({this.question, this.onClickHandler});
  Widget createAnwserWidget(Answer answer) {
    Widget answerWidget = SizedBox(
      width: 300.0,
      ////alignment: Alignment.center,
      child: RaisedButton(
        child: Text(
          answer.answerText,
          textAlign: TextAlign.center,
        ),
        onPressed: () => onClickHandler(answer.score),
        color: Colors.purpleAccent,
      ),
    );
    return answerWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: question.answers
            .map((answer) => createAnwserWidget(answer))
            .toList());
  }
}
