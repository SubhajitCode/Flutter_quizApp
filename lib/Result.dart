import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  final totalScore;
  final Function resetHandler;
  ResultWidget(this.totalScore, this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Total Score is " + totalScore.toString()),
        RaisedButton(
          child: Text("Reset Quiz"),
          onPressed: resetHandler,
        )
      ],
    );
  }
}
