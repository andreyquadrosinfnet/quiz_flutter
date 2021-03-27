import 'package:flutter/material.dart';
import 'package:flutter_app_quiz/Quiz.dart';
import 'package:flutter_app_quiz/Resultado.dart';
import 'package:flutter_app_quiz/Respostas.dart';
import 'package:flutter_app_quiz/Quiz.dart';
import 'package:flutter_app_quiz/AppQuiz.dart';

class Questionario extends StatelessWidget {

  final List<Map<String, Object>> questoes;
  final int posicaoQuestao;
  final Function(bool respostaValida) responder;

  Questionario({
    @required this.questoes,
    @required this.posicaoQuestao,
    @required this.responder,
});

  bool get verificarFimDeJogo => posicaoQuestao == questoes.length;

  @override
  Widget build(BuildContext context) {
    List <Map<String, Object>> respostas = !verificarFimDeJogo ?
    questoes[posicaoQuestao]["Respostas"] : null;

    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
              Center(child: AppQuiz(questoes[posicaoQuestao]["Enunciado"])),
              ...respostas.map((respostas) => Respostas(
                  () => responder(respostas['correta']),
                  respostas['texto'])).toList(),
            ],
    );
  }
}
