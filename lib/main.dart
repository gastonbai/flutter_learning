import "dart:async";

import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Adding asset'),
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image(image: AssetImage('assets/images/12313123.jpg')),
              Image.asset('assets/icons/Brjy.png')
            ],
          ),
        ),
      )
    );
  }

}