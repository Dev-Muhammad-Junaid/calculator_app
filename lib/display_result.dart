import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


class ResultDisplay extends StatelessWidget {
  String text="10";
  final int result=0;

  ResultDisplay({required this.text});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Neumorphic(
        style: NeumorphicStyle(depth:3,border: NeumorphicBorder(color: NeumorphicColors.darkBackground,width: 1)),
        child: Column(
          children: [
            AnimatedContainer(
              color: Colors.black12,
              duration: Duration(seconds: 1),
              child: Container(
                padding: EdgeInsets.all(10),
                  alignment:Alignment.bottomRight,
                  width: double.infinity,
                  child: Text(text),
              ),
            ),
            Container(
                width: double.infinity,
                height: 80,
                child: Container(
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.only(right: 24, bottom: 24),
                    child: Text(text, style: TextStyle(
                      overflow: TextOverflow.clip,
                          color: Colors.black,
                          fontSize: 34,
                      ),
                    )
                )
            ),
          ],
        ),
      ),
    );
  }
}


