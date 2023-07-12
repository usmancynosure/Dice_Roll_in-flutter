import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  //we always use runapp to run the flutter app-->>
  //Runapp comes form flutter
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.lightBlue,
        body: GradientContainer(),
      ),
    ),
  );
}
