import 'package:flutter/material.dart';
import 'package:first_app/textwidget.dart';

class GradientContainer extends StatelessWidget {
  //constructor
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      //place of const will be the higher posisble state
      //const is used to make the code faster
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(133, 104, 58, 183),
            Color.fromARGB(230, 33, 149, 243),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: const Center(child: Textwidget()),
    );
  }
}
