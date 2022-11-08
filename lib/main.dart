import 'package:calculator_app/display_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'custom_widgets/MyButton.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {

  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
String? text;
int? firstOperand;
String? operator;
int? secondOperand;
int? result;
  NeumorphicStyle neumorphicStyle = NeumorphicStyle();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      title: "Calculator",
      home: Scaffold(
          appBar: NeumorphicAppBar(
            actions: [
              NeumorphicRadio(child: Icon(Icons.nightlight_outlined),),
            ],
            leading: InkWell(onTap:(){},child: Icon(FlutterIcons.history_mco))
          ),
          body: Column(
            children: [
              ResultDisplay(text: _getDisplayText()),
              Expanded(
                flex: 3,
                child: GridView.count(
                  padding: EdgeInsets.all(20),
                  crossAxisSpacing:10,
                  crossAxisCount: 4,
                  children: [
                    MyButton(text: "1",onPressed: ()=> numberPressed(1),),
                    MyButton(text: "2",onPressed: ()=> numberPressed(2),),
                    MyButton(text: "3",onPressed: ()=> numberPressed(3),),

                    MyButton(text: "+",onPressed: ()=>operatorPressed("+"),color: Colors.amber.shade600,),

                    MyButton(text: "4",onPressed: ()=> numberPressed(4),),
                    MyButton(text: "5",onPressed: ()=> numberPressed(5),),
                    MyButton(text: "6",onPressed: ()=> numberPressed(6),),

                    MyButton(text: "-",onPressed: ()=>operatorPressed("-"),color: Colors.amber.shade600,),

                    MyButton(text: "7",onPressed: ()=> numberPressed(7),),
                    MyButton(text: "8",onPressed: ()=> numberPressed(8),),
                    MyButton(text: "9",onPressed: ()=> numberPressed(9),),

                    MyButton(text: "/",onPressed: ()=>operatorPressed("/"),color: Colors.amber.shade600,),

                    MyButton(text: "0",onPressed: ()=> numberPressed(0),),
                    MyButton(text: ".",onPressed: ()=>operatorPressed("."),),
                    MyButton(text: text=="0"?"C":"AC",onPressed: ()=>clear(),),

                    MyButton(text: "*",onPressed: ()=>operatorPressed("*"),color: Colors.amber.shade600,),
                    ActionChip(backgroundColor: NeumorphicColors.background,label: Text("Tip"), onPressed: (){},avatar: Icon(Icons.calculate_outlined),elevation: 1),
                    ActionChip(backgroundColor: NeumorphicColors.background,label: Text("Sqrt"), onPressed: (){},avatar: Icon(FlutterIcons.square_root_mco),elevation: 1),
                    ActionChip(backgroundColor: NeumorphicColors.background,label: Text("Log"), onPressed: (){},avatar: Icon(FlutterIcons.ios_calculator_ion,),elevation: 1),
                    MyButton(text: "=",onPressed: ()=>calculateResult,color: Colors.amber.shade600,),

                  ],
                ),
              ),

            ],

          )),
      debugShowCheckedModeBanner: false,

    );
  }

void operatorPressed(String operator) {
  setState(() {
    if (firstOperand == null) {
      firstOperand = 0;
    }
    this.operator = operator;
  });
}
void numberPressed(int number) {
  setState(() {
    if (result != null) {
      result = null;
      firstOperand = number;
      return;
    }
    if (firstOperand == null) {
      firstOperand = number;
      return;
    }
    if (operator == null) {
      firstOperand = int.parse('$firstOperand$number');
      return;
    }
    if (secondOperand == null) {
      secondOperand = number;
      return;
    }

    secondOperand = int.parse('$secondOperand$number');
  });
}
void calculateResult() {
  if (operator == null || secondOperand == null) {
    return;
  }
  setState(() {
    switch (operator) {
      case '+':
        result = firstOperand! + secondOperand!;
        break;
      case '-':
        result = firstOperand! - secondOperand!;
        break;
      case '*':
        result = firstOperand! * secondOperand!;
        break;
      case '/':
        if (secondOperand! == 0) {
          return;
        }
        result = firstOperand! ~/ secondOperand!;
        break;
    }

    firstOperand = result;
    operator = null;
    secondOperand = null;
    result = null;
  });
}
void clear() {
  setState(() {
    result = null;
    operator = null;
    secondOperand = null;
    firstOperand = null;
  });
}

String _getDisplayText() {
  if (result != null) {
    return '$result';
  }

  if (secondOperand != null) {
    return '$firstOperand$operator$secondOperand';
  }

  if (operator != null) {
    return '$firstOperand$operator';
  }

  if (firstOperand != null) {
    return '$firstOperand';
  }

  return '0';
}

}


