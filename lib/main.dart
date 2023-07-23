import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  //we always use runapp to run the flutter app-->>
  //Runapp comes form flutter

  //imput color gradient
  const color1 = Color.fromARGB(149, 0, 46, 212);
  const color2 = Color.fromARGB(223, 0, 148, 212);
  runApp(
    const MaterialApp(
      home: Scaffold(
          //backgroundColor: Colors.lightBlue,
          body: //GradientContainer(color1,color2),
              GradientContainer.purples()),
    ),
  );
}
