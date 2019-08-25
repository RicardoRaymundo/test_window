import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'answer.dart';
import 'answer_button.dart';
import 'data_list.dart';

class TestPage extends StatelessWidget {

  List<Answer> listAnswer = [
    Answer(
      id: 'bbbb',
      text: 'Uma espécie rara de peixe?',
      isCorrect: false,
    ),
    Answer(
      id: 'aaaa',
      text: 'Uma Árvore?',
      isCorrect: false,
    ),
    Answer(
      id: 'cccc',
      text: 'A ciencia que estuda as projeções do futuro?',
      isCorrect: true,
    ),
    Answer(
      id: 'dddd',
      text: 'Peça de um computador?',
      isCorrect: false,
    ),
    Answer(
      id: 'bbbb',
      text: 'Uma espécie rara de peixe?',
      isCorrect: false,
    ),
    Answer(
      id: 'bbbb',
      text: 'Uma espécie rara de peixe?',
      isCorrect: false,
    ),
    Answer(
      id: 'bbbb',
      text: 'Uma espécie rara de peixe?',
      isCorrect: false,
    ),
    Answer(
      id: 'bbbb',
      text: 'Uma espécie rara de peixe?',
      isCorrect: false,
    ),
  ];

  // Carrega o conteudo da API
  Future<List<Answer>> fetchAnswers() async {
    return await this.listAnswer;
  }

  Widget _groupButton() {
    return FutureBuilder<List<Answer>>(
      // A future é o processamento do json do servidor
      // Recebe List<JsonData>
      future: this.fetchAnswers(),
      builder: (context, snapshot) {
        // Verifica se há erro
        if (snapshot.hasError) print(snapshot.error);

        // Mostra tela de carregamento até o fim do processamento dos dados
        return snapshot.hasData
            ? DataList(dataAnswer: snapshot.data)
            : Center(child: CircularProgressIndicator());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: SingleChildScrollView(
        child:Container(
          color: Color.fromRGBO(250, 0, 0, 0.5),
          height: screenSize.height,
          width: screenSize.width,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: SafeArea(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color(0xff363636),
                ),
                height: screenSize.height * 0.7,
                width: screenSize.width * 0.8,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 35,
                          width: 35,
                          child: CircularPercentIndicator(
                            radius: 30.0,
                            lineWidth: 3.0,
                            percent: 0.4,
                            center: Text(
                              '1',
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
                            ' Teste de Nivelamento',
                            style:
                            TextStyle(color: Color(0xff9a9a9a), fontSize: 20),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Muito bem, arrasou!',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xff8cc53f),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Image.asset('assets/trophy.png'),
                        SizedBox(height: 20,),
                        Text(
                          'O que é futurismo?',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        SizedBox(height: 10,),
                        this._groupButton()
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
