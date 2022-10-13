import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  NeumorphicStyle neumorphicStyle = NeumorphicStyle();
   MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      title: "Calculator",
      home: Scaffold(
        appBar: NeumorphicAppBar(leading: NeumorphicCloseButton(onPressed: (){},),),
        backgroundColor: Colors.amber,
        body: Column(
          children: [
            Neumorphic(
              margin: EdgeInsets.all(20),
              child: Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(border: Border.all(color: Colors.black12,width: 5,)
                ), child: TextField(cursorColor:Colors.green,controller: TextEditingController(),decoration: InputDecoration(border: InputBorder.none)),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 5,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: [
                NeumorphicButton(

                  margin: EdgeInsets.all(15),
                  provideHapticFeedback: true,
                  onPressed: (){},child: Text("1",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
                NeumorphicButton(margin: EdgeInsets.all(15),
                  onPressed: (){},child: Text("2",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
                NeumorphicButton(margin: EdgeInsets.all(15),
                  onPressed: (){},child: Text("3",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
                NeumorphicButton(margin: EdgeInsets.all(15),
                  onPressed: (){},child: Text("4",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
                NeumorphicButton(margin: EdgeInsets.all(15),
                  onPressed: (){},child: Text("5",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
                NeumorphicButton(margin: EdgeInsets.all(15),
                  onPressed: (){},child: Text("6",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
                NeumorphicButton(margin: EdgeInsets.all(15),
                  onPressed: (){},child: Text("7",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
                NeumorphicButton(margin: EdgeInsets.all(15),
                  onPressed: (){},child: Text("8",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
                NeumorphicButton(margin: EdgeInsets.all(15),
                  onPressed: (){},child: Text("9",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
                NeumorphicButton(margin: EdgeInsets.all(15),
                  onPressed: (){},child: Text("0",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
                NeumorphicButton(margin: EdgeInsets.all(15),
                  onPressed: (){},child: Text(".",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
                NeumorphicButton(margin: EdgeInsets.all(15),
                  onPressed: (){},child: Text("c",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),),
                ],
              ),
            )
          ],
        )
      ),
      debugShowCheckedModeBanner: false,

    );
  }
}