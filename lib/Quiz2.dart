import 'package:flutter/material.dart';
import 'package:flutter_app_quiz/AppQuiz.dart';
import 'package:flutter_app_quiz/Quiz.dart';

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
    "Para que serve um StateLessWidget?",
    "Para que serve um ElevatedButton ?",
    "Como funciona o BottomBar no Flutter?"
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
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(32, 32, 32, 10),
                  child: ElevatedButton(onPressed: responder, child: Text('Resposta 1')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 10, 32, 10),
                child: ElevatedButton(onPressed: responder, child: Text('Resposta 2')),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 10, 32, 10),
                child: ElevatedButton(onPressed: responder, child: Text('Resposta 3')),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 10, 32, 10),
                child: ElevatedButton(onPressed: responder, child: Text('Resposta 4')),
              ),

            ],

          ),
        ),
      ),
    );
  }
}
