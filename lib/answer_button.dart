import 'package:flutter/material.dart';
import 'answer.dart';

class AnswerButton extends StatelessWidget {

  final Answer answer;
  final Color color;

  AnswerButton({this.answer, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5, top: 5, left: 30.0, right: 30.0),
      child: RaisedButton(
        color: this.answer.isCorrect ? this.color : Color(0xffff0000),
        onPressed: this.answer.isCorrect ? () {} : null,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)),
        child: ConstrainedBox(
          constraints: new BoxConstraints(
            minHeight: 50.0,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 25.0),
              child: Text(
                //'A ciencia que estuda as projeções do futuro?',
                this.answer.text,
                style: TextStyle(
                    color: this.answer.isCorrect ? Colors.black : Color(0xff666666),
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    decoration: this.answer.isCorrect
                        ? TextDecoration.none
                        : TextDecoration.lineThrough),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*
,
    return Column(
      children: <Widget>[
        this._answerButton(
          Answer(
            id: 'bbbb',
            text: 'Uma espécie rara de peixe?',
            isCorrect: false,
          ),
          Color(0xff9cff00),
        ),
        this._answerButton(
          Answer(
            id: 'aaaa',
            text: 'Uma Árvore?',
            isCorrect: false,
          ),
          Color(0xff9cff00),
        ),
        this._answerButton(
          Answer(
            id: 'cccc',
            text: 'A ciencia que estuda as projeções do futuro?',
            isCorrect: true,
          ),
          Color(0xff9cff00),
        ),
        this._answerButton(
          Answer(
            id: 'dddd',
            text: 'Peça de um computador?',
            isCorrect: false,
          ),
          Color(0xff9cff00),
        ),
      ],
    );
 */