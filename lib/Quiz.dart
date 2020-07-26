import 'package:flutter/material.dart';

import 'Answer.dart';
import 'Questions.dart';
import 'Result.dart';

class Answer {
  //DataStructure to hold answer
  String answerText;
  double score;
  Answer({this.answerText, this.score});
}

class Question {
  //dataStructure to hold Question
  String questionText;
  List<Answer> answers;
  Question({this.questionText, this.answers});
}

class QuetionBank {
  //Later Data will be pulled from Database
  //Until that we will genearte the data staticaly
  List<Question> questionList = List<Question>();
  QuetionBank() {
    questionList.add(Question(questionText: "Myquestion 1", answers: [
      Answer(answerText: "My Answer 1_1", score: 40),
      Answer(answerText: "My Answer 1_2", score: 60)
    ]));

    questionList.add(Question(questionText: "Myquestion 2", answers: [
      Answer(answerText: "My Answer 2_1", score: 30),
      Answer(answerText: "My Answer 2_2", score: 70)
    ]));
  }
  List<Question> getQuestionList() {
    return this.questionList;
  }

  List<Question> addQuestion(Question question) {
    this.questionList.add(question);
    return this.questionList;
  }
}

class QuizWidget extends StatefulWidget {
  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int qIndex = 0;
  double totalScore = 0;
  QuetionBank qBank = new QuetionBank();
  var questionList;
  _QuizWidgetState() {
    questionList = qBank.getQuestionList();
  }
  void answerQuestion(double score) {
    //When user press any answer Button this method must be executed
    setState(() {
      totalScore += score;
      qIndex++;
    });
  }

  void reset() {
    //When user Press Reset Button qIndex must be zero and display must rerender
    setState(() {
      qIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: (qIndex < questionList.length)
            ? [
                QuestionWidget(questionList[qIndex]),
                AnswerWidget(
                    question: questionList[qIndex],
                    onClickHandler: answerQuestion),
              ]
            : [ResultWidget(totalScore, reset)],
      ),
    );
  }
}
