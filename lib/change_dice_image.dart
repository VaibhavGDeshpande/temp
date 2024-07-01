import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class Dice_Roller extends StatefulWidget{
  const Dice_Roller({super.key});
  @override
  State<Dice_Roller> createState(){
    return _Dice_RollerState();
  }
}

class _Dice_RollerState extends State<Dice_Roller>{

  var changeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    setState(() {
      var randomint = randomizer.nextInt(6)+1;
      changeDiceImage = 'assets/images/dice-$randomint.png';
    });
  }

  @override
  Widget build(context){
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            changeDiceImage,
            width: 200,
          ),
          //const SizedBox(
          // height: 20,
          // )
          TextButton(
            onPressed:
            rollDice, //onPressed takes and argument as a function and that function is anonymous function and only name is specified
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              foregroundColor: Colors.white,
            ),
            child: const Text(
              'Roll Dice',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
        ],
      );
  }
}
