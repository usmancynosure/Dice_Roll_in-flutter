import 'package:first_app/textwidget.dart';
import 'package:flutter/material.dart';
import 'dart:math';

//for code optimal
final randomizer = Random();

//using stateful widget you will always be work with two classes
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  //not add build method
  @override
  State<DiceRoller> createState() {
    //state is a generic type->return the list
    // TODO: implement createState
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
//function of rolldice
  void Rolldice() {
    setState(() {
      //this will change the state
      //this will re-execute the build method
      //this will change the state of the widget
      currentDiceRoll = randomizer.nextInt(6) + 1; //<>1 to 6<>
    });

    //this will not chnage the state -->because this will not re-execute the build method
    //to solve this use the setstate method
    print("dice roll change");
  }

  Widget build(context) {
    return Column(
      //mainAxissize->adjust the in centere otherwise they take all space
      mainAxisSize: MainAxisSize.min,

      children: [
        Image.asset(
          "assests/images/dice-$currentDiceRoll.png",
          width: 200,
        ),
        //for spacing between image and text add the box widget
        const SizedBox(
          height: 23,
        ),
        TextButton(
          onPressed: Rolldice,
          style: TextButton.styleFrom(
            //space between widgets--->edgeinsert.all-->means space from all sides

            // padding: const EdgeInsets.only(
            //   top: 25,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text(
            "Roll Dice",
          ),
        ),
        //padding
        /*const Padding(
          padding: EdgeInsets.only(
            top: 100,
          ),
        ),
        const Textwidget(
          "play and enjoy",
        ),*/
      ],
    );
  }
}
