import 'package:flutter/material.dart';
import 'package:first/change_dice_image.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color, {super.key}); //const GradientContainer({super.key, required List<Color> color});

  final List<Color> color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: color,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child:Dice_Roller(),
      ),
    );
  }
}

/* class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2,{super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:  color,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText('Hi! Flutter'),
      ),
    );
  }
}
 */

/*
StyledText.dart

import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  const StyledText(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context){
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 25,
      ),
    );
  }
}
 */
