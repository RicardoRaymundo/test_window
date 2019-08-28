import 'package:flutter/material.dart';
import 'package:test_window/exam/exam_question.dart';
import 'package:test_window/app/app_behavior.dart';
import 'package:test_window/exam/exam_try_again.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: AppBehavior(), // Remove efeito de scroll da aplicação.
          child: child,
        );
      },
      theme: ThemeData(),
      home: ExamTryAgain(),
    );
  }
}
