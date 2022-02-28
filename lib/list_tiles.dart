import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListCards extends StatelessWidget {
  String imgList;
  String title;
  var _perguntaSelecionada = 0;
  var teste = [
    {'texto': 'Qual é o numero que somado com 5 da 10/2?',
    'respostas': ['0', '5', '3', '2']}
  ];

  ListCards(this.imgList, this.title, {Key? key}) : super(key: key);

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < teste.length;
  }

  @override
  Widget build(BuildContext context) {
     Object? respostas = temPerguntaSelecionada ? teste[_perguntaSelecionada]['resposta'] : null;
    return ListTile(
      leading: Image.asset(
        imgList,
        width: 26,
        height: 26,
      ),
      title: Text(
        title,
        style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      onTap: () {},
    );
  }
}
