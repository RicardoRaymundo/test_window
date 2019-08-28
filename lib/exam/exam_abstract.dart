import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:test_window/answer.dart';
import 'package:test_window/data_list.dart';

class ExamAbstract extends StatelessWidget {
  @protected
  Color color;

  @protected
  List<CustomButtonConfig> listCustomButtonConfig = [];

  @protected
  Map<String, dynamic> header;

  @protected
  String question;

  // Carrega o conteudo da API
  Future<List<CustomButtonConfig>> fetchCustomButtonConfig() async {
    return await this.listCustomButtonConfig;
  }

  @protected
  Widget groupButton() {
    return FutureBuilder<List<CustomButtonConfig>>(
      // A future é o processamento do json do servidor
      // Recebe List<JsonData>
      future: this.fetchCustomButtonConfig(),
      builder: (context, snapshot) {
        // Verifica se há erro
        if (snapshot.hasError) print(snapshot.error);

        // Mostra tela de carregamento até o fim do processamento dos dados
        return snapshot.hasData
            ? DataList(dataCustomButtonConfig: snapshot.data, color: this.color)
            : Center(child: CircularProgressIndicator());
      },
    );
  }

  @protected
  Widget prepareHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 35,
          width: 35,
          child: CircularPercentIndicator(
            radius: 30.0,
            lineWidth: 3.0,
            percent: this.header['progress'],
            center: Text(
              this.header['index'].toString(),
              style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Montserrat",
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
            progressColor: Colors.blue,
            backgroundColor: Color(0xff222222),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 40,
          child: Text(
            this.header['title'],
            style: TextStyle(color: Color(0xff9a9a9a), fontSize: 20),
          ),
        )
      ],
    );
  }

  @protected
  Widget title({String value, String image, Color color = Colors.white}) {
    return Column(
      children: <Widget>[
        Text(
          value,
          style: TextStyle(
            fontSize: 25,
            color: color,
            //color: Color(0xff8cc53f),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Image.asset(image),
      ],
    );
  }

  @protected
  Widget prepareQuestion() {
    return Text(
      this.question,
      style: TextStyle(fontSize: 25, color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {}
}
