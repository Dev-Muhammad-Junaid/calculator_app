import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      title: "Calculator",
      home: Scaffold(
        backgroundColor: NeumorphicColors.accent,
        appBar: NeumorphicAppBar(
          centerTitle: true,
          leading: NeumorphicCloseButton(style: NeumorphicStyle(boxShape: NeumorphicBoxShape.stadium(),)),
        ),
        body: Column(
          children: [
            Neumorphic(
              margin: EdgeInsets.all(20),
              child: Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 5,)
                ),
                child: TextField(cursorColor:Colors.green,controller: TextEditingController(),decoration: InputDecoration(border: InputBorder.none)),
              ),
            ),
            GridView.count(
              crossAxisSpacing: 10,
              crossAxisCount: 3,
              shrinkWrap: true,
              children: [
              NeumorphicButton(
                style: NeumorphicStyle(shape: NeumorphicShape.concave,boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50))),
                provideHapticFeedback: true,

                onPressed: (){},child: Text("1",style: TextStyle(fontSize: 40),textAlign: TextAlign.center,),),
              NeumorphicButton(onPressed: (){},child: Text("2",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
              NeumorphicButton(onPressed: (){},child: Text("3",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
              NeumorphicButton(onPressed: (){},child: Text("4",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
              NeumorphicButton(onPressed: (){},child: Text("5",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
              NeumorphicButton(onPressed: (){},child: Text("6",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
              NeumorphicButton(onPressed: (){},child: Text("7",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
              NeumorphicButton(onPressed: (){},child: Text("8",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
              NeumorphicButton(onPressed: (){},child: Text("9",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
              NeumorphicButton(onPressed: (){},child: Text("0",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
              NeumorphicButton(onPressed: (){},child: Text(".",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
              NeumorphicButton(onPressed: (){},child: Text("c",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
              ],
            )
          ],
        )
      ),
      debugShowCheckedModeBanner: false,

    );
  }
}