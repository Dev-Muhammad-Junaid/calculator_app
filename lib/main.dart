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
String text="0";
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
              // Neumorphic(
              //   margin: EdgeInsets.all(20),
              //   child: Container(
              //     height: 120,
              //     width: 400,
              //     decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 5,)
              //     ), child: TextField(cursorColor:Colors.green,controller: TextEditingController(),decoration: InputDecoration(border: InputBorder.none)),
              //   ),
              // ),
              ResultDisplay(text: text),
              Expanded(
                flex: 3,
                child: GridView.count(
                  padding: EdgeInsets.all(20),
                  crossAxisSpacing:10,
                  crossAxisCount: 4,
                  children: [
                    MyButton(text: "1",onPressed: (){
                      text="10";

                      setState(() {
                        text="20";

                      });
                      },
                    ),
                    MyButton(text: "2",onPressed: (){},),
                    MyButton(text: "3",onPressed: (){},),

                    MyButton(text: "+",onPressed: (){},color: Colors.amber.shade600,),

                    MyButton(text: "4",onPressed: (){},),
                    MyButton(text: "5",onPressed: (){},),
                    MyButton(text: "6",onPressed: (){},),

                    MyButton(text: "-",onPressed: (){},color: Colors.amber.shade600,),

                    MyButton(text: "7",onPressed: (){},),
                    MyButton(text: "8",onPressed: (){},),
                    MyButton(text: "9",onPressed: (){},),

                    MyButton(text: "/",onPressed: (){},color: Colors.amber.shade600,),

                    MyButton(text: "0",onPressed: (){},),
                    MyButton(text: ".",onPressed: (){},),
                    MyButton(text: "c",onPressed: (){}),

                    MyButton(text: "*",onPressed: (){},color: Colors.amber.shade600,),
                    ActionChip(backgroundColor: NeumorphicColors.background,label: Text("Tip"), onPressed: (){},avatar: Icon(Icons.calculate_outlined),elevation: 1),
                    ActionChip(backgroundColor: NeumorphicColors.background,label: Text("Sqrt"), onPressed: (){},avatar: Icon(FlutterIcons.square_root_mco),elevation: 1),
                    ActionChip(backgroundColor: NeumorphicColors.background,label: Text("Log"), onPressed: (){},avatar: Icon(FlutterIcons.ios_calculator_ion,),elevation: 1),
                    MyButton(text: "=",onPressed: (){},color: Colors.amber.shade600),

                  ],
                ),
              ),
            ],
          )),
      debugShowCheckedModeBanner: false,

    );
  }
}
