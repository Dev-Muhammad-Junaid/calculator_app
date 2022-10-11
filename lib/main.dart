import 'package:neuomorphic_container/neuomorphic_container.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Center(
          child: NeuomorphicContainer(
            alignment: Alignment.center,
            width: 200,
            height: 200,
            blur: 100,
            color: Colors.cyan,
            shape: BoxShape.circle,
            style: NeuomorphicStyle.Concave,
            child: CircleAvatar(backgroundColor: Colors.black12),
            ),
        ),
        ),
    );
  }
}