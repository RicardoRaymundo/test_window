import 'package:flutter/material.dart';
import 'answer.dart';
import 'answer_button.dart';

class DataList extends StatelessWidget {
  // Variavel que recebe o snapshot.data do componente pai
  final List<Answer> dataAnswer;

  DataList({Key key, this.dataAnswer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: dataAnswer.length,
      itemBuilder: (context, index) {
        return AnswerButton(
          answer: Answer(
            id: 'cccc',
            text: 'A ciencia que estuda as projeções do futuro?',
            isCorrect: true,
          ),
          color: Color(0xff9cff00),
        );
      },
    );
  }
}
