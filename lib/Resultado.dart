import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao;
  final int pontuacaoTotal;
  final void Function() reiniciarJogo;
  Resultado({
  @required this.pontuacao,
    @required this.pontuacaoTotal,
      @required this.reiniciarJogo
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
                "Fim do Quiz",
                style: TextStyle(fontSize: 36),
                textAlign: TextAlign.center,

            ),

          ),
          Center(
            child: Text(
              'A pontuação final foi: $pontuacao/$pontuacaoTotal',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,

            )
          ),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: ElevatedButton(
                onPressed: reiniciarJogo,
                child: Text(
                  "Reiniciar Jogo"

                )),
          )
        ],
      ),
    );
  }
}
