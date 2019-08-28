import 'package:flutter/material.dart';
import 'package:test_window/answer.dart';
import 'package:test_window/exam/exam_abstract.dart';

class ExamTryAgain extends ExamAbstract {
  final Color color = Colors.orange;

  final Map<String, dynamic> header = {
    'index': 1,
    'progress': 0.3,
    'title': 'Teste de Nivelamento',
  };

  List<CustomButtonConfig> listCustomButtonConfig = [
    CustomButtonConfig(
      text: 'Quer tentar novamente?',
      isCorrect: true,
    ),
    CustomButtonConfig(
      text: 'Saber a resposta?',
      isCorrect: true,
    ),
    CustomButtonConfig(
      text: 'Continuar?',
      isCorrect: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffff0000),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Container(
                height: 510,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color(0xff363636),
                ),
                child: Column(
                  children: <Widget>[
                    this.prepareHeader(),
                    SizedBox(height: 20),
                    this.title(
                      value: 'Ops! Tente mais uma vez.',
                      image: 'assets/trophy.png',
                      color: Color(0xff8cc53f),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // this.title('Muito bem, arrasou!'),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        this.groupButton()
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
