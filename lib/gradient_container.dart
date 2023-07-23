import 'package:first_app/dice-roller.dart';
import 'package:flutter/material.dart';
import 'package:first_app/textwidget.dart';

const startAllignment = Alignment.topRight;
//Alignment? startAlligment; //? because Allignment may be null or some value
const endsAlignment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  //attributes
  final Color color1;
  final Color color2;

  //final List<color> colors;->this is also one approach
  //default constructor
  const GradientContainer(this.color1, this.color2, {super.key});

  //multiple constructor
  const GradientContainer.purples({super.key})
      : color1 = const Color.fromARGB(111, 3, 38, 79),
        color2 = const Color.fromARGB(102, 133, 8, 179);

  @override
  Widget build(context) {
    return Container(
      //place of const will be the higher posisble state
      //const is used to make the code faster
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: startAllignment,
          end: endsAlignment,
        ),
      ),

      child: const Center(
        child:
            //USE THE IMAGE INSTEAD OF TEXT
            DiceRoller(),
      ),
    );
  }
}
