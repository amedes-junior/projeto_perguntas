import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    String msg = "Sua Pontuação $pontuacao !!!";

    if (pontuacao < 8) {
      return '$msg Parabéns!';
    } else if (pontuacao < 12) {
      return '$msg Você é bom !';
    } else if (pontuacao < 16) {
      return '$msg Impressionante !';
    } else {
      return '$msg Nível Jedi !!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(fraseResultado, style: TextStyle(fontSize: 20)),
        ),
        FlatButton(
          child: Text(
            'Reiniciar ?',
            style: TextStyle(fontSize: 18),
          ),
          textColor: Colors.blue,
          onPressed: quandoReiniciarQuestionario,
        )
      ],
    );
  }
}
