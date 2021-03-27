import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {

  final void Function() responder;
  final String texto;
  Respostas(this.responder, this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
      child:
        ElevatedButton(
          onPressed: responder,
          child: Text(texto,
          style: TextStyle(fontSize: 20.0),
        )
    ));
  }
}
