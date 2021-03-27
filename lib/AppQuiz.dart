import 'package:flutter/material.dart';

class AppQuiz extends StatelessWidget {
  final String enunciado;
  AppQuiz(this.enunciado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(32, 32, 32, 32),
      child: Text(
        enunciado
      ),
    );
  }
}
