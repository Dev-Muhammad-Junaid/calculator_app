import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


class ResultDisplay extends StatelessWidget {
  String text;
  ResultDisplay({required this.text});


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      // child: InputDecorator(
      //   decoration: InputDecoration(
      //       contentPadding: EdgeInsets.all(30),
      //       counter: Text("0/0"),
      //       border: OutlineInputBorder(),
      //       fillColor: Colors.green),
      //   child: TextField(controller: TextEditingController(),decoration: InputDecoration(border: InputBorder.none),cursorHeight: 40,),
      // ),
      child: Neumorphic(
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/Calculator.png"),fit:BoxFit.cover)),
            height: 120,
            child: Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: 24, bottom: 24),
                child: Text(text, style: TextStyle(
                      color: Colors.black,
                      fontSize: 34
                  ),
                )
            )
        ),
      ),
    );
  }
}