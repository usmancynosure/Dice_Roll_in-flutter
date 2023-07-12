import 'package:flutter/material.dart';

class Textwidget extends StatelessWidget {
  //constructor
  const Textwidget({super.key});
  @override
  Widget build(context) {
    return const Text(
      "<!HELLO WORLD!>",
      //use configuration to style the app
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
