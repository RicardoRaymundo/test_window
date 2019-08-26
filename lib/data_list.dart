import 'package:flutter/material.dart';
import 'answer.dart';
import 'answer_button.dart';

class DataList extends StatelessWidget {
  // Variavel que recebe o snapshot.data do componente pai
  final List<Answer> dataAnswer;

  DataList({Key key, this.dataAnswer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: processList(),
    );
  }

  List<Widget> processList() {

    final int len = this.dataAnswer.length;
    final List<AnswerButton> listAnswerButton = [];

    for (int i = 0; i < len; i++) {
      listAnswerButton.add(
          AnswerButton(
            answer: Answer(
              id: dataAnswer[i].id,
              text: dataAnswer[i].text,
              isCorrect: dataAnswer[i].isCorrect,
            ),
            color: Color(0xff9cff00),
          )
      );
    }

    return listAnswerButton;
  }

  Widget buildx(BuildContext context) {
    return Container(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
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
      ),
    );
  }
}
