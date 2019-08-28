import 'package:flutter/material.dart';
import 'answer.dart';

class CustomButton extends StatelessWidget {

  final CustomButtonConfig customButtonConfig;
  final Color color;

  CustomButton({this.customButtonConfig, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5, top: 5, left: 30.0, right: 30.0),
      child: RaisedButton(
        color: this.customButtonConfig.isCorrect ? this.color : Color(0xffff0000),
        onPressed: this.customButtonConfig.isCorrect ? () {} : null,
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
                this.customButtonConfig.text,
                style: TextStyle(
                    color: this.customButtonConfig.isCorrect ? Colors.black : Color(0xff666666),
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    decoration: this.customButtonConfig.isCorrect
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
