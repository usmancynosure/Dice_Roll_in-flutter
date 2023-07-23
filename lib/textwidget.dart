import 'package:flutter/material.dart';

class Textwidget extends StatelessWidget {
  //properties/attributes
  final String text;

  //constructor
  const Textwidget(String text, {super.key}) : this.text = text;

  @override
  Widget build(context) {
    return Text(
      text,
      //use configuration to style the app
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(124, 208, 218, 11),
      ),
    );
  }
}
//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
//ghp_cLnVDCmtta4qHnP2KnuIbTz0b6QPrL1YBn
