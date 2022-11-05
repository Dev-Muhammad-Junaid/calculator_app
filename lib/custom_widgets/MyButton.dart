import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


class MyButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color? color;
  const MyButton({required this.text,required this.onPressed,this.color});

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      style: NeumorphicStyle(
        color: color,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20))),
      provideHapticFeedback: true,
      onPressed: () {onPressed;},
      child: Text(
        text,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}