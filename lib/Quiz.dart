import 'package:flutter/material.dart';
import 'package:flutter_app_quiz/AppQuiz.dart';
import 'package:flutter_app_quiz/Questionario.dart';
import 'package:flutter_app_quiz/Quiz.dart';
import 'package:flutter_app_quiz/Respostas.dart';
import 'package:flutter_app_quiz/Resultado.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int posicaoQuestao = 0;
  int pontuacao = 0;

  void responder(bool respostaValida) {
    if (posicaoQuestao+1 <= questoes.length) {
    setState(() {
        posicaoQuestao++;
        respostaValida ? pontuacao += 2 : pontuacao--;
      });
    print('A pontuação foi:'+pontuacao.toString());

    }
  }

  final questoes = [
    {
      "Enunciado": "Para que serve um StateLessWidget?",
      "Respostas": [
        {"texto":"Resposta 1.", 'correta': false},
        {"texto":"Resposta 2.", 'correta': false},
        {"texto":"Resposta 3.", 'correta': false},
        {"texto":"Resposta 4.", 'correta': true},
      ]
    },
    {
      "Enunciado": "Para que serve um ElevatedButton ?",
      "Respostas": [
        {"texto":"Resposta 1.", 'correta': false},
        {"texto":"Resposta 2.", 'correta': false},
        {"texto":"Resposta 3.", 'correta': false},
        {"texto":"Resposta 4.", 'correta': true},
      ]
    },
    {
      "Enunciado": "Como funciona o BottomBar no Flutter?",
      "Respostas": [
        {"texto":"Resposta 1.", 'correta': false},
        {"texto":"Resposta 2.", 'correta': false},
        {"texto":"Resposta 3.", 'correta': false},
        {"texto":"Resposta 4.", 'correta': true},
      ]
    },
  ];

  bool get verificarFimDeJogo => posicaoQuestao == questoes.length;

  @override
  Widget build(BuildContext context) {


    print('Questão $posicaoQuestao Respondida!');
    print(posicaoQuestao);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: verificarFimDeJogo
            ? Resultado()
            : Questionario(
            questoes: questoes,
            posicaoQuestao: posicaoQuestao,
            responder: responder),

        ),
    );

  }
}
