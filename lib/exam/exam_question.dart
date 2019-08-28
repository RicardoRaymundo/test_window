import 'package:flutter/material.dart';
import 'package:test_window/answer.dart';
import 'package:test_window/exam/exam_abstract.dart';

import 'package:test_window/answer.dart';

class ExamQuestion extends ExamAbstract {

  final Color color = Colors.purpleAccent;

  final String question = 'O que é futurismo?';

  final Map<String, dynamic> header = {
    'index': 1,
    'progress': 0.3,
    'title': 'Teste de Nivelamento',
  };

  List<CustomButtonConfig> listCustomButtonConfig = [
    CustomButtonConfig(
      text: 'Uma espécie rara de peixe?',
      isCorrect: false,
    ),
    CustomButtonConfig(
      text: 'Uma Árvore?',
      isCorrect: false,
    ),
    CustomButtonConfig(
      text: 'A ciencia que estuda as projeções do futuro?',
      isCorrect: true,
    ),
    CustomButtonConfig(
      text: 'Peça de um computador?',
      isCorrect: false,
    ),
    CustomButtonConfig(
      text: 'Uma espécie rara de peixe?',
      isCorrect: false,
    ),
    CustomButtonConfig(
      text: 'Uma espécie rara de peixe?',
      isCorrect: false,
    ),
    CustomButtonConfig(
      text: 'Uma espécie rara de peixe?',
      isCorrect: false,
    ),
    CustomButtonConfig(
      text: 'Uma espécie rara de peixe?',
      isCorrect: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffff0000),
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(10.0),
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color(0xff363636),
                ),
                child: Column(
                  children: <Widget>[
                    this.prepareHeader(),
                    SizedBox(height: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // this.title('Muito bem, arrasou!'),
                        SizedBox(
                          height: 20,
                        ),
                        this.prepareQuestion(),
                        SizedBox(
                          height: 10,
                        ),
                        this.groupButton()
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
