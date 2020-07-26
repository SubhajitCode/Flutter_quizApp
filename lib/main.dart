import 'package:flutter/material.dart';

// import 'Questions.dart';
// import 'Answer.dart';
import 'Quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My quiz App"),
        ),
        body: QuizWidget(),
      ),
    );
  }
}
