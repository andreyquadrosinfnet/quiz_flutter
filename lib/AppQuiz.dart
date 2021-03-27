import 'package:flutter/material.dart';

class AppQuiz extends StatelessWidget {
  final String enunciado;
  AppQuiz(this.enunciado);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(32, 32, 32, 32),
        child: Center(
          child: Text(
            enunciado,
            style: TextStyle(
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
