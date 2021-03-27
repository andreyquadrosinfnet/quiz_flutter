import 'package:flutter/material.dart';
import 'package:flutter_app_quiz/AppQuiz.dart';
import 'package:flutter_app_quiz/Quiz.dart';
import 'package:flutter_app_quiz/Respostas.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int posicaoQuestao = 0;

  void responder(){
    setState(() {
      if(posicaoQuestao+1 < questoes.length) {
        posicaoQuestao++;
      }else{
        posicaoQuestao = 0;
      }

    });
  }
  final questoes = [
  {
    "Enunciado: ": "Para que serve um StateLessWidget?",
    "Respostas: ": [
      "Serve para Fritar um ovo.",
      "Serve para ligar a TV.",
      "Serve para criar um Widget sem estado.",
      "Serve para criar um Widget com estado."
    ]

  },
  {
    "Enunciado: ":"Para que serve um ElevatedButton ?",
    "Respostas: ": [
      "Serve para Fritar um ovo.",
      "Serve para ligar a TV.",
      "Serve para criar um Widget sem estado.",
      "Serve para criar um Widget com estado."
  ]

  },
  {
    "Enunciado:":"Como funciona o BottomBar no Flutter?",
    "Respostas: ": [
    "Serve para Fritar um ovo.",
    "Para criar um barra no rodapé",
    "Serve para criar um Widget sem estado.",
    "Serve para criar um Widget com estado."
    ]
  },
  ];

  @override
  Widget build(BuildContext context) {

      print('Questão $posicaoQuestao Respondida!');
      print(posicaoQuestao);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppQuiz(questoes[posicaoQuestao]),
              Respostas(responder, "Resposta 1"),
              Respostas(responder, "Resposta 2"),
              Respostas(responder, "Resposta 3"),
              Respostas(responder, "Resposta 4"),


            ],

          ),
        ),
      ),
    );
  }
}
