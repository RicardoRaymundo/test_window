import 'package:flutter/material.dart';
import 'answer.dart';
import 'custom_button.dart';

class DataList extends StatelessWidget {
  // Variavel que recebe o snapshot.data do componente pai
  final List<CustomButtonConfig> dataCustomButtonConfig;
  final Color color;

  DataList({Key key, this.dataCustomButtonConfig, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: processList(),
    );
  }

  List<Widget> processList() {

    final int len = this.dataCustomButtonConfig.length;
    final List<CustomButton> listCustomButton = [];

    for (int i = 0; i < len; i++) {
      listCustomButton.add(
          CustomButton(
            customButtonConfig: CustomButtonConfig(
              text: dataCustomButtonConfig[i].text,
              isCorrect: dataCustomButtonConfig[i].isCorrect,
            ),
            color: this.color,
          )
      );
    }

    return listCustomButton;
  }

  Widget buildx(BuildContext context) {
    return Container(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        itemCount: dataCustomButtonConfig.length,

        itemBuilder: (context, index) {
          return CustomButton(
            customButtonConfig: CustomButtonConfig(
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
